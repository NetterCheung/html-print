using System;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Microsoft.Win32;
using Microsoft.Web.WebView2.Core;
using Microsoft.Web.WebView2.Wpf;

namespace LetterCompareApp;

public partial class MainWindow : Window
{
	private const string ScrollBridgeScript = @"
(function(){
  if(window.__letterCompareBridge) return;
  window.__letterCompareBridge=true;
  window.__letterCompareSuppress=false;
  function ratio(){
    var h=Math.max(document.documentElement.scrollHeight,document.body.scrollHeight);
    var m=Math.max(0,h-window.innerHeight);
    return m>0?window.scrollY/m:0;
  }
  function notify(){
    if(window.__letterCompareSuppress) return;
    window.chrome.webview.postMessage(JSON.stringify({type:'scroll',ratio:ratio()}));
  }
  window.addEventListener('scroll',notify,{passive:true});
  document.addEventListener('scroll',notify,{passive:true});
})();";

	private const double ZoomMin = 0.5;
	private const double ZoomMax = 1.5;
	private const double ZoomStep = 0.1;

	private readonly string _htmlDir;
	private string _leftPath;
	private string _rightPath;
	private bool _webViewsInitialized;
	private CoreWebView2Environment? _chromeEnv;

	private bool _locking;
	private bool _zoomLocking;
	private bool _edgeReady;
	private bool _chromeReady;
	private int _edgeScrollPct;
	private int _chromeScrollPct;
	private int _zoomPercent = 100;

	public MainWindow()
	{
		InitializeComponent();
		_htmlDir = FindHtmlDirectory();
		var defaults = (
			Left: Path.Combine(_htmlDir, "V5_LODI001A_IE.html"),
			Right: Path.Combine(_htmlDir, "V6_LODI001A_CHROME.html"));
		var saved = AppSettings.Load();
		_leftPath = ResolvePath(saved.LeftPath, defaults.Left);
		_rightPath = ResolvePath(saved.RightPath, defaults.Right);
		UpdatePathLabels();
		Loaded += MainWindow_Loaded;
	}

	private static string ResolvePath(string? candidate, string fallback) =>
		!string.IsNullOrWhiteSpace(candidate) && File.Exists(candidate) ? candidate : fallback;

	private static string FindHtmlDirectory()
	{
		var dir = AppDomain.CurrentDomain.BaseDirectory;
		for (var i = 0; i < 8; i++)
		{
			if (File.Exists(Path.Combine(dir, "V5_LODI001A_IE.html")))
				return dir;
			dir = Directory.GetParent(dir)?.FullName ?? dir;
		}
		return AppDomain.CurrentDomain.BaseDirectory;
	}

	private async void MainWindow_Loaded(object sender, RoutedEventArgs e)
	{
		RefreshStatusText();
		try
		{
			await InitializeWebViewsAsync();
			await LoadDocumentsAsync();
		}
		catch (Exception ex)
		{
			StatusText.Text = "Error: " + ex.Message;
		}
	}

	private async Task InitializeWebViewsAsync()
	{
		if (_webViewsInitialized) return;

		var chromeProfile = Path.Combine(
			Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
			"LetterCompareApp", "ChromePreviewProfile");
		Directory.CreateDirectory(chromeProfile);

		var chromeOptions = new CoreWebView2EnvironmentOptions(
			"--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36");
		_chromeEnv = await CoreWebView2Environment.CreateAsync(null, chromeProfile, chromeOptions);

		await EdgeView.EnsureCoreWebView2Async();
		SetupWebView(EdgeView, isEdge: true, onReady: () => _edgeReady = true);

		await ChromeView.EnsureCoreWebView2Async(_chromeEnv);
		SetupWebView(ChromeView, isEdge: false, onReady: () => _chromeReady = true);

		_webViewsInitialized = true;
	}

	private async Task LoadDocumentsAsync()
	{
		if (!_webViewsInitialized)
			await InitializeWebViewsAsync();

		UpdatePathLabels();

		if (!File.Exists(_leftPath) || !File.Exists(_rightPath))
		{
			StatusText.Text = "File not found — use Browse to pick HTML files.";
			return;
		}

		_edgeReady = false;
		_chromeReady = false;
		_edgeScrollPct = 0;
		_chromeScrollPct = 0;
		_zoomPercent = 100;
		EdgeView.ZoomFactor = 1.0;
		ChromeView.ZoomFactor = 1.0;

		EdgeView.Source = new Uri(_leftPath);
		ChromeView.Source = new Uri(_rightPath);

		new AppSettings { LeftPath = _leftPath, RightPath = _rightPath }.Save();
		RefreshStatusText();
	}

	private void UpdatePathLabels()
	{
		LeftPathText.Text = Path.GetFileName(_leftPath);
		LeftPathText.ToolTip = _leftPath;
		RightPathText.Text = Path.GetFileName(_rightPath);
		RightPathText.ToolTip = _rightPath;
		LeftHeaderText.Text = "LEFT — Microsoft Edge (WebView2)  ·  " + Path.GetFileName(_leftPath);
		RightHeaderText.Text = "RIGHT — Chrome layout preview (WebView2)  ·  " + Path.GetFileName(_rightPath);
	}

	private void BrowseLeft_Click(object sender, RoutedEventArgs e) => PickHtmlFile(isLeft: true);

	private void BrowseRight_Click(object sender, RoutedEventArgs e) => PickHtmlFile(isLeft: false);

	private async void PickHtmlFile(bool isLeft)
	{
		var current = isLeft ? _leftPath : _rightPath;
		var initialDir = Directory.Exists(Path.GetDirectoryName(current) ?? "")
			? Path.GetDirectoryName(current)!
			: _htmlDir;

		var dlg = new OpenFileDialog
		{
			Title = isLeft ? "Select left HTML file" : "Select right HTML file",
			Filter = "HTML files (*.html;*.htm)|*.html;*.htm|All files (*.*)|*.*",
			InitialDirectory = initialDir,
			FileName = Path.GetFileName(current)
		};

		if (dlg.ShowDialog(this) != true) return;

		if (isLeft)
			_leftPath = dlg.FileName;
		else
			_rightPath = dlg.FileName;

		try
		{
			await LoadDocumentsAsync();
		}
		catch (Exception ex)
		{
			StatusText.Text = "Error: " + ex.Message;
		}
	}

	private async void Swap_Click(object sender, RoutedEventArgs e)
	{
		(_leftPath, _rightPath) = (_rightPath, _leftPath);
		try
		{
			await LoadDocumentsAsync();
		}
		catch (Exception ex)
		{
			StatusText.Text = "Error: " + ex.Message;
		}
	}

	private void SetupWebView(WebView2 view, bool isEdge, Action onReady)
	{
		view.ZoomFactor = 1.0;
		view.CoreWebView2!.Settings.AreDevToolsEnabled = false;
		view.CoreWebView2.WebMessageReceived += (_, e) =>
		{
			try
			{
				var json = e.TryGetWebMessageAsString();
				if (json != null && json.Contains("\"scroll\""))
					_ = OnPaneScrolledAsync(isEdge, ParseRatio(json));
			}
			catch { /* ignore */ }
		};
		view.CoreWebView2.NavigationCompleted += async (_, _) =>
		{
			await view.CoreWebView2.ExecuteScriptAsync(ScrollBridgeScript);
			onReady();
			await RefreshScrollPercentAsync();
		};
	}

	private string ScrollMode
	{
		get
		{
			if (ModeV5?.IsChecked == true) return "v5";
			if (ModeV6?.IsChecked == true) return "v6";
			if (ModeIndep?.IsChecked == true) return "independent";
			return "both";
		}
	}

	private static double ParseRatio(string json)
	{
		var i = json.IndexOf("\"ratio\"", StringComparison.Ordinal);
		if (i < 0) return 0;
		var start = json.IndexOf(':', i) + 1;
		var end = json.IndexOfAny(new[] { ',', '}' }, start);
		if (end < 0) end = json.Length;
		return double.TryParse(json.Substring(start, end - start).Trim(), out var r) ? r : 0;
	}

	private async Task OnPaneScrolledAsync(bool fromEdge, double ratio)
	{
		var pct = (int)Math.Round(ratio * 100);
		if (fromEdge)
			_edgeScrollPct = pct;
		else
			_chromeScrollPct = pct;
		RefreshStatusText();

		if (_locking || ScrollMode != "both") return;

		_locking = true;
		try
		{
			if (fromEdge)
				await SetRatioAsync(ChromeView, ratio, _chromeReady);
			else
				await SetRatioAsync(EdgeView, ratio, _edgeReady);
		}
		finally
		{
			_locking = false;
		}
	}

	private static async Task SetRatioAsync(WebView2 view, double ratio, bool ready)
	{
		if (!ready || view.CoreWebView2 == null) return;
		var r = ratio.ToString(System.Globalization.CultureInfo.InvariantCulture);
		await view.CoreWebView2.ExecuteScriptAsync($@"
window.__letterCompareSuppress=true;
window.scrollTo(0, Math.round({r} * Math.max(0, document.documentElement.scrollHeight - window.innerHeight)));
requestAnimationFrame(function(){{ window.__letterCompareSuppress=false; }});");
	}

	private static async Task<double> GetRatioAsync(WebView2 view, bool ready)
	{
		if (!ready || view.CoreWebView2 == null) return 0;
		var result = await view.CoreWebView2.ExecuteScriptAsync(
			"(function(){var h=Math.max(document.documentElement.scrollHeight,document.body.scrollHeight);var m=Math.max(0,h-window.innerHeight);return m>0?window.scrollY/m:0;})()");
		return double.TryParse(result.Trim('"'), System.Globalization.NumberStyles.Any,
			System.Globalization.CultureInfo.InvariantCulture, out var r) ? r : 0;
	}

	private async Task ScrollByDelta(double delta)
	{
		var mode = ScrollMode;
		_locking = true;
		try
		{
			if (mode == "both" || mode == "v5")
				await ScrollViewByDelta(EdgeView, _edgeReady, delta);
			if (mode == "both" || mode == "v6")
				await ScrollViewByDelta(ChromeView, _chromeReady, delta);
			if (mode == "both" && _edgeReady)
			{
				var ratio = await GetRatioAsync(EdgeView, true);
				await SetRatioAsync(ChromeView, ratio, _chromeReady);
			}
		}
		finally
		{
			_locking = false;
		}
		await RefreshScrollPercentAsync();
	}

	private static async Task ScrollViewByDelta(WebView2 view, bool ready, double delta)
	{
		if (!ready || view.CoreWebView2 == null) return;
		await view.CoreWebView2.ExecuteScriptAsync($@"
window.__letterCompareSuppress=true;
window.scrollBy(0, {delta});
requestAnimationFrame(function(){{ window.__letterCompareSuppress=false; }});");
	}

	private void RefreshStatusText()
	{
		var labels = new System.Collections.Generic.Dictionary<string, string>
		{
			["both"] = "Both together",
			["v5"] = "Left only",
			["v6"] = "Right only",
			["independent"] = "Independent"
		};
		var mode = ScrollMode;
		var leftName = Path.GetFileName(_leftPath);
		var rightName = Path.GetFileName(_rightPath);
		StatusText.Text =
			$"Mode: {labels[mode]}  |  {leftName} ↔ {rightName}  |  Zoom {_zoomPercent}%  |  Left scroll {_edgeScrollPct}%  |  Right scroll {_chromeScrollPct}%  |  Ctrl+wheel to zoom";
	}

	private void Window_PreviewKeyDown(object sender, KeyEventArgs e)
	{
		if (Keyboard.Modifiers != ModifierKeys.Control) return;

		var target = EdgeView.IsKeyboardFocusWithin ? EdgeView : ChromeView;
		switch (e.Key)
		{
			case Key.OemPlus:
			case Key.Add:
				e.Handled = true;
				AdjustZoom(target, ZoomStep);
				break;
			case Key.OemMinus:
			case Key.Subtract:
				e.Handled = true;
				AdjustZoom(target, -ZoomStep);
				break;
			case Key.D0:
			case Key.NumPad0:
				e.Handled = true;
				ApplyZoom(EdgeView, 1.0);
				break;
		}
	}

	private void WebView_PreviewMouseWheel(object sender, MouseWheelEventArgs e)
	{
		if (Keyboard.Modifiers != ModifierKeys.Control) return;
		e.Handled = true;
		var view = (WebView2)sender;
		AdjustZoom(view, e.Delta > 0 ? ZoomStep : -ZoomStep);
	}

	private void AdjustZoom(WebView2 source, double delta) =>
		ApplyZoom(source, source.ZoomFactor + delta);

	private void ApplyZoom(WebView2 source, double zoom)
	{
		if (_zoomLocking) return;
		zoom = Math.Clamp(zoom, ZoomMin, ZoomMax);
		_zoomPercent = (int)Math.Round(zoom * 100);

		var mode = ScrollMode;
		var fromEdge = source == EdgeView;
		_zoomLocking = true;
		try
		{
			if (mode == "both")
			{
				if (_edgeReady) EdgeView.ZoomFactor = zoom;
				if (_chromeReady) ChromeView.ZoomFactor = zoom;
			}
			else if (mode == "v5")
			{
				if (fromEdge && _edgeReady) EdgeView.ZoomFactor = zoom;
			}
			else if (mode == "v6")
			{
				if (!fromEdge && _chromeReady) ChromeView.ZoomFactor = zoom;
			}
			else
			{
				source.ZoomFactor = zoom;
			}
		}
		finally
		{
			_zoomLocking = false;
		}
		RefreshStatusText();
	}

	private void ZoomIn_Click(object sender, RoutedEventArgs e) =>
		ApplyZoom(EdgeView, EdgeView.ZoomFactor + ZoomStep);

	private void ZoomOut_Click(object sender, RoutedEventArgs e) =>
		ApplyZoom(EdgeView, EdgeView.ZoomFactor - ZoomStep);

	private void ZoomReset_Click(object sender, RoutedEventArgs e) =>
		ApplyZoom(EdgeView, 1.0);

	private async Task RefreshScrollPercentAsync()
	{
		if (_edgeReady)
			_edgeScrollPct = (int)Math.Round(await GetRatioAsync(EdgeView, true) * 100);
		if (_chromeReady)
			_chromeScrollPct = (int)Math.Round(await GetRatioAsync(ChromeView, true) * 100);
		RefreshStatusText();
	}

	private void ScrollMode_Changed(object sender, RoutedEventArgs e)
	{
		if (!IsLoaded) return;
		RefreshStatusText();
	}

	private async void ScrollUp_Click(object sender, RoutedEventArgs e) => await ScrollByDelta(-80);

	private async void ScrollDown_Click(object sender, RoutedEventArgs e) => await ScrollByDelta(80);

	private async void ScrollTop_Click(object sender, RoutedEventArgs e)
	{
		var mode = ScrollMode;
		_locking = true;
		try
		{
			if (mode == "both" || mode == "v5") await SetRatioAsync(EdgeView, 0, _edgeReady);
			if (mode == "both" || mode == "v6") await SetRatioAsync(ChromeView, 0, _chromeReady);
		}
		finally
		{
			_locking = false;
		}
		await RefreshScrollPercentAsync();
	}

	private async void ScrollBottom_Click(object sender, RoutedEventArgs e)
	{
		var mode = ScrollMode;
		_locking = true;
		try
		{
			if (mode == "both" || mode == "v5") await SetRatioAsync(EdgeView, 1, _edgeReady);
			if (mode == "both" || mode == "v6") await SetRatioAsync(ChromeView, 1, _chromeReady);
		}
		finally
		{
			_locking = false;
		}
		await RefreshScrollPercentAsync();
	}

	private async void Align_Click(object sender, RoutedEventArgs e)
	{
		var ratio = await GetRatioAsync(EdgeView, _edgeReady);
		await SetRatioAsync(ChromeView, ratio, _chromeReady);
		await RefreshScrollPercentAsync();
	}

	private async void Reload_Click(object sender, RoutedEventArgs e)
	{
		try
		{
			await LoadDocumentsAsync();
		}
		catch (Exception ex)
		{
			StatusText.Text = "Error: " + ex.Message;
		}
	}

	private void OpenInChrome_Click(object sender, RoutedEventArgs e)
	{
		if (!File.Exists(_rightPath))
		{
			MessageBox.Show("Right-hand file not found: " + _rightPath, "File not found",
				MessageBoxButton.OK, MessageBoxImage.Warning);
			return;
		}

		var chrome = FindChromeExe();
		if (chrome == null)
		{
			MessageBox.Show("Google Chrome not found. Install Chrome or open the HTML file manually.",
				"Chrome not found", MessageBoxButton.OK, MessageBoxImage.Information);
			return;
		}
		Process.Start(new ProcessStartInfo
		{
			FileName = chrome,
			Arguments = "\"" + _rightPath + "\"",
			UseShellExecute = true
		});
	}

	private static string? FindChromeExe()
	{
		string[] paths =
		{
			Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles),
				@"Google\Chrome\Application\chrome.exe"),
			Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFilesX86),
				@"Google\Chrome\Application\chrome.exe"),
			Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
				@"Google\Chrome\Application\chrome.exe")
		};
		foreach (var p in paths)
			if (File.Exists(p)) return p;
		return null;
	}
}
