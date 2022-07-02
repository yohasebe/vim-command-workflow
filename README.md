# Vim Command Alfred Workflow

**An Alfred workflow to search Vim command cheat sheet + *run* commands**

This is an Alfred workflow that searches a Vim command cheat sheet and sends vim commands directly to the front-most application running Vim, Neovim, etc.

It uses the data from the awesome multi-lingual Vim cheat sheet project [https://github.com/rtorr/vim-cheat-sheet](https://github.com/rtorr/vim-cheat-sheet).

<img src='https://github.com/yohasebe/vim-command-workflow/blob/main/source/img/screenshot-01.png?raw=true' width="700" />

## Installation

1. Download [vim-command.alfredworkflow](https://github.com/yohasebe/vim-command-workflow/raw/main/vim-command.alfredworkflow) (current version is `0.1.2`).
2. Double-click the workflow file
3. Press [x] button on the upper right corner of the Alfred's workflow pane
4. Set values to the variables if necessary (see below)
5. Set up a hotkey trigger (`^⇧⌘V`, for instance)

## Usage

Type `vimc` in Alfred or use the hotkey if you have set up one. You can narrow down commands returned by typing-in one or more search keys.

- Type `vimc` into Alfred or use a hotkey if set
- Enter one or more search keys to narrow down the commands returned
- Select a command and the Vim command will automatically be typed into the front-most app

## Available Options

### Locale

The command description can be displayed in one of the following languages, depending on the setting of the variable `locale` (default value: `en_us`).

**N.B.** Currently, searches are always performed against the cheat sheet in `en_us`, regardless of `locale` setting.

| Locale                | Code   |
| ---------             | ------ |
| [العربية](https://vim.rtorr.com/lang/ar)                 | `ar`     |
| [বাংলা](https://vim.rtorr.com/lang/bn)                      | `bn`     |
| [Català](https://vim.rtorr.com/lang/ca)                  | `ca`     |
| [Deutsch](https://vim.rtorr.com/lang/de_de)              | `de_de`  |
| [English](https://vim.rtorr.com/lang/en_us)              | `en_us`  |
| [Español](https://vim.rtorr.com/lang/es_es)              | `es_es`  |
| [Persian](https://vim.rtorr.com/lang/fa_ir)              | `fa_ir`  |
| [Français](https://vim.rtorr.com/lang/fr_fr)             | `fr_fr`  |
| [עברית](https://vim.rtorr.com/lang/he)                   | `he`     |
| [Hrvatski](https://vim.rtorr.com/lang/hr)                | `hr`     |
| [Bahasa Indonesia](https://vim.rtorr.com/lang/id)        | `id`     |
| [Italiano](https://vim.rtorr.com/lang/it)                | `it`     |
| [日本語](https://vim.rtorr.com/lang/ja)                  | `ja`     |
| [한국어](https://vim.rtorr.com/lang/ko)                  | `ko`     |
| [မြန်မာ](https://vim.rtorr.com/lang/mm)                     | `mm`     |
| [Nederlands](https://vim.rtorr.com/lang/nl_nl)           | `nl_nl`  |
| [Norsk](https://vim.rtorr.com/lang/no_nb)                | `no_nb`  |
| [Polski](https://vim.rtorr.com/lang/pl_pl)               | `pl_pl`  |
| [Português - Brasil](https://vim.rtorr.com/lang/pt_br)   | `pt_br`  |
| [Português - Portugal](https://vim.rtorr.com/lang/pt_pt) | `pt_pt`  |
| [Romana](https://vim.rtorr.com/lang/ro)                  | `ro`     |
| [Русский](https://vim.rtorr.com/lang/ru)                 | `ru`     |
| [සිංහල](https://vim.rtorr.com/lang/si_lk)                  | `si_lk`  |
| [Slovenčina](https://vim.rtorr.com/lang/sk)              | `sk`     |
| [Svenska](https://vim.rtorr.com/lang/sv)                 | `sv`     |
| [ภาษาไทย](https://vim.rtorr.com/lang/th)                 | `th`     |
| [Türkçe](https://vim.rtorr.com/lang/tr)                  | `tr`     |
| [Українська](https://vim.rtorr.com/lang/uk)              | `uk`     |
| [Tiếng Việt](https://vim.rtorr.com/lang/vi_vn)           | `vi_vn`  |
| [简体中文](https://vim.rtorr.com/lang/zh_cn)             | `zh_cn`  |
| [中文 (台灣)](https://vim.rtorr.com/lang/zh_tw)          | `zh_tw`  |

### Separator

You can set `separator` to any string you like, including emojis 😀.

<img src='https://github.com/yohasebe/vim-command-workflow/blob/main/source/img/screenshot-02.png?raw=true' width="700" />

### Order of Search Results

If `fixed_order` is set to true, the command list will be displayed in a fixed order each time it is called. Set to `false` if you want to order them according to past usage.
