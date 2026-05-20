using System;
using System.IO;
using System.Text.Json;

namespace LetterCompareApp;

internal sealed class AppSettings
{
	public string? LeftPath { get; set; }
	public string? RightPath { get; set; }

	private static string SettingsFilePath => Path.Combine(
		Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
		"LetterCompareApp", "settings.json");

	public static AppSettings Load()
	{
		try
		{
			var path = SettingsFilePath;
			if (!File.Exists(path)) return new AppSettings();
			var json = File.ReadAllText(path);
			return JsonSerializer.Deserialize<AppSettings>(json) ?? new AppSettings();
		}
		catch
		{
			return new AppSettings();
		}
	}

	public void Save()
	{
		var dir = Path.GetDirectoryName(SettingsFilePath)!;
		Directory.CreateDirectory(dir);
		var json = JsonSerializer.Serialize(this, new JsonSerializerOptions { WriteIndented = true });
		File.WriteAllText(SettingsFilePath, json);
	}
}
