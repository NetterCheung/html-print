# V5 → V6 letter layout parity

Reference for how **V6_LODI001A_CHROME.html** was changed to match **V5_LODI001A_IE.html** for on-screen view and **Chrome printing**, while keeping V6’s own letter data (serial, dates, etc.).

- **HTML readme:** open [README.html](README.html) in a browser (same content as this wiki).
- **Markdown wiki:** this file (`WIKI.md`).

---

## Scope and limitations

| Topic | Detail |
|-------|--------|
| **Goal** | Chrome (screen + print) should match **IE / V5 layout**, not replace V5 content. |
| **V6 data** | Serial `DI2600194`, visit dates `27/04/2026`–`26/05/2026`, etc. stay as V6. Only **structure and styling** follow V5. |
| **“Exactly”** | IE (GDI) and Chrome (Blink) still measure fonts and justify text differently. Extra Chrome-only CSS compensates where needed. |
| **Compare app** | `LetterCompareApp` left pane is **WebView2 (Chromium)**, not real IE. True IE checks need IE or `V5_LODI001A_IE.pdf`. |

```
V5_LODI001A_IE.html  ──► table structure copied ──► V6_LODI001A_CHROME.html
                                                      │
                                                      ▼
                                              Chrome CSS compensations
                                                      │
                                                      ▼
                                              Chrome print / PDF
```

---

## Project files

| File | Purpose |
|------|---------|
| `V5_LODI001A_IE.html` | IE reference letter (unchanged) |
| `V6_LODI001A_CHROME.html` | Chrome target letter |
| `V5_LODI001A_IE.pdf` / `V6_LODI001A_CHROME.pdf` | Printed reference outputs |
| `compare_V5_V6.html` | Browser side-by-side compare |
| `LetterCompareApp/` | Windows dual-pane compare app |
| `README.html` | HTML readme (browser-friendly; same content as this wiki) |
| `WIKI.md` | Wiki markdown (this file) |

---

## 1. Document structure (copied from V5)

| Area | V5 pattern | Applied in V6 |
|------|------------|----------------|
| Page width | Outer `table width="700"` `align="center"` | Same table skeleton |
| Inner tables | `cellpadding="2"` `cellspacing="1"` | Preserved; `id="english-letter"` on English block |
| Column layout | `2%` gutter + `22%` / `15%` / `63%` header rows | Same HTML column widths |
| Body paragraphs | `div align="justify"` + 8× `&nbsp;` indent | Same markup |
| Spacers | `tr style="line-height:7px"` | Same; not compressed for Chrome |
| Lists | Nested `table width="100%"` for (1)(2)(3) | Same |
| Chinese page | Second `table width="700"` after page break | Same two-page flow |
| Page break | `DIV id="first page"` / `id="page last"` | Same + `break-before: page` |

---

## 2. Layout and spacing CSS (Chrome fixes)

Main fixes for **top/left drift** and **column alignment**:

- **No `html/body { margin: 0 }` reset** — keeps default page margins like V5/IE.
- **Centred 700px block:** `body > table { width: 700px; margin: auto; }`.
- **IE `cellspacing="1"`:** `border-collapse: separate; border-spacing: 1px` on `table[cellspacing="1"]`.
- **Fixed gutter columns:** `td[width="2%"]` → **14px**, `td[width="3%"]` → **21px** (avoids Chrome % rounding on 700px).
- **Logo row:** `table.logo-block td { padding: 2px; }` — matches V5 `cellpadding="2"`.
- **English spacers:** `#english-letter` keeps `line-height: 7px` and `font-size: 10pt` on spacer rows (no 1px font shrink hack).

---

## 3. Typography and fonts

| Element | V5 | V6 |
|---------|-----|-----|
| English body | `font-family: "Arial"， Times， serif` (fullwidth commas; IE often uses **Arial** first) | `10pt`; tuned toward Arial-first stack where applied |
| Bold / labels | `.win10_bold` → **PMingLiU** | Same |
| Chinese name | `MingLiU_HKSCS` inline | Same + CSS fallback stack |
| Print | Print meta tags only | `@page { size: A4 portrait; margin: 2mm; }`, `@media print`, `print-color-adjust: exact` |

**Current file note:** `V6_LODI001A_CHROME.html` may show **Times New Roman** on `td` until Arial-first and spacing rules are (re)applied — see section 5.

---

## 4. Print-specific behaviour

- **`@page` A4, 2mm margin** — aligns with V5 print meta (`papersize`, margin meta tags).
- **`print-color-adjust: exact`** — logo and colours print reliably in Chrome.
- **Page 2 break:** `#first page` / `#page last` — English then Chinese page like V5.
- **PDF:** Regenerate `V6_LODI001A_CHROME.pdf` via Chrome print or headless Chrome; compare to `V5_LODI001A_IE.pdf`.

---

## 5. Character spacing / line length (fine-tune)

**Symptom:** Chrome text runs slightly **wider** than V5 — justified paragraphs extend further right.

**Causes:**

- Different effective font (Times vs IE’s Arial-first stack from V5’s font declaration).
- Chrome kerning and justify **word-spacing**.

**Typical compensations in V6 CSS:**

```css
td {
  font-family: Arial, "Times New Roman", Times, serif;
  font-size: 10pt;
  font-kerning: none;
  font-feature-settings: "kern" 0, "liga" 0;
}
#english-letter div[align="justify"] {
  letter-spacing: -0.035em;
  word-spacing: -0.08em;
  text-align: justify;
}
```

If V6 is still a little wide, nudge `letter-spacing` / `word-spacing` slightly more negative; if too tight, reduce the values.

---

## 6. Assets and content

- **Logo URL:** `http://192.168.11.87:9002/valid/images/logo.gif` (fixed from unreachable `192.168.1.54`).
- **V6 content differences** (serial, dates) are intentional — not copied from V5.

---

## 7. Validation checklist

1. **700px centred** letter block; logo on English and Chinese pages.
2. **Header rows** (Tel / Email / Serial / Date) align with V5.
3. **Spacer rows** — same vertical rhythm (`line-height: 7px`).
4. **Justified paragraphs** — line breaks at same words (main IE vs Chrome difference).
5. **Chinese page** — PMingLiU / MingLiU_HKSCS and page break.
6. **Print** — Chrome at 100% scale, A4, margins comparable to V5 IE print.

---

## Letter Compare app

Run `LetterCompareApp\Run-LetterCompare.bat`:

- **Left / Right:** Defaults to V5 and V6 HTML; use **Browse…** to pick any `.html` / `.htm` files.
- **Swap** — switch left and right files.
- **Open right in Chrome** — real Chrome for final validation.
- **Persistence:** last paths saved in `%LocalAppData%\LetterCompareApp\settings.json`.

Scroll/zoom modes: Both together, Left only, Right only, Independent.

---

## Bottom line

V6 was rebuilt on **V5’s table HTML**, then Chrome-specific CSS was added for **margins, table spacing, fixed gutters, spacers, fonts, `@page` print rules, and logo URL**. Line-length parity depends on **font stack + letter/word-spacing** on English justified blocks — the last mile for pixel-perfect match.
