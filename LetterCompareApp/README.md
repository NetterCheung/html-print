# Letter Compare — Windows app

Side-by-side viewer (no CefSharp — works with Windows Security / Smart App Control):

- **Left:** Microsoft **Edge** (WebView2) — default `V5_LODI001A_IE.html`, or **Browse…** to pick any HTML file
- **Right:** **Chrome layout preview** (WebView2 with Chrome user-agent) — default `V6_LODI001A_CHROME.html`, or **Browse…**
- **Swap** — exchange left and right files
- **Open right in Chrome** — opens the current right-hand file in installed Google Chrome

Last-used left/right paths are saved to `%LocalAppData%\LetterCompareApp\settings.json` and restored on next launch.

## Why CefSharp was removed

Windows may block unsigned `CefSharp.dll` (“Part of this app has been blocked”). This version uses only **Microsoft WebView2** (signed, from Microsoft).

## Requirements

- Windows 10/11
- [.NET 6 Runtime](https://dotnet.microsoft.com/download/dotnet/6.0)
- [WebView2 Runtime](https://developer.microsoft.com/microsoft-edge/web-view2/) (usually preinstalled)

## Run

Double-click **`Run-LetterCompare.bat`** or:

```bat
cd LetterCompareApp
dotnet run -c Release
```

Rebuild after update:

```bat
dotnet build -c Release
```

## Scroll modes

| Mode | Behaviour |
|------|-----------|
| Both together | Scroll either panel — both align |
| Left only | Left pane only |
| Right only | Right pane only |
| Independent | Each side separate |

For **final Chrome sign-off**, use **Open right in Chrome** or print from Chrome directly.
