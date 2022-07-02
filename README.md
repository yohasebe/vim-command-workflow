# Vim Command Alfred Workflow

**An Alfred workflow to search Vim command cheat sheet + run commands**

This is an Alfred workflow that searches a Vim command cheat sheet and sends vim commands directly to the frontmost application running Vim, Neovim, etc.

It uses the data from the awesome multi-lingual Vim cheat sheet project [https://github.com/rtorr/vim-cheat-sheet](https://github.com/rtorr/vim-cheat-sheet).

<img src='https://github.com/yohasebe/vim-command-workflow/blob/main/source/img/screenshot-01.png?raw=true' width="700" />

## Installation

1. Download [vim-command.alfredworkflow](https://github.com/yohasebe/vim-command-workflow/raw/main/vim-command.alfredworkflow) (current version is `0.1.0`).
2. Double-click the workflow file
3. Press [x] button on the upper right corner of the Alfred's workflow pane
4. Set values to the variables if necessary (see below)
5. Set up a hotkey trigger (`^⇧⌘V`, for instance)

## Usage

Type `vimc` in Alfred or use the hotkey if you have set up one. You can narrow down commands returned by typing-in one or more search keys.

- Type `vimc` into Alfred or use a hotkey if set.
- You can enter one or more search keys to narrow down the commands returned. 

## Available Options

### Locale

The command description can be displayed in one of the following languages, depending on the setting of the variable `locale` (default value: `en_us`).

| Locale               | Code   |
| ---------            | ------ |
| العربية             | `ar`     |
| বাংলা                 | `bn`     |
| Català               | `ca`     |
| Deutsch              | `de_de`  |
| English              | `en_us`  |
| Español              | `es_es`  |
| Persian              | `fa_ir`  |
| Français             | `fr_fr`  |
| עברית           | `he`     |
| Hrvatski             | `hr`     |
| Bahasa Indonesia     | `id`     |
| Italiano             | it     |
| 日本語               | `ja`     |
| 한국어               | `ko`     |
| မြန်မာ                  | `mm`     |
| Nederlands           | `nl_nl`  |
| Norsk                | `no_nb`  |
| Polski               | `pl_pl`  |
| Português - Brasil   | `pt_br`  |
| Português - Portugal | `pt_pt`  |
| Romana               | `ro`     |
| Русский              | `ru`     |
| සිංහල                  | `si_lk`  |
| Slovenčina           | `sk`     |
| Svenska              | `sv`     |
| ภาษาไทย              | `th`     |
| Türkçe               | `tr`     |
| Українська           | `uk`     |
| Tiếng Việt           | `vi_vn`  |
| 简体中文             | `zh_cn`  |
| 中文 (台灣)          | `zh_tw`  |

### Separator Text

You can set `separator` to any string you like, including emojis 😀.

<img src='https://github.com/yohasebe/vim-command-workflow/blob/main/source/img/screenshot-02.png?raw=true' width="700" />

### Order of Search Results

If `fixed_order` is set to true, the command list will be displayed in a fixed order each time it is called. Set to `false` if you want to order them according to past usage.
