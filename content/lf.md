---
title: "lf"
date: 2022-12-21T17:07:04-05:00
---

lf is the file manager used in MARBS.
lf is awesome and makes you look cool even in front of the people who know their shit.

{{< img src="/pix/lf.png" class=normal caption="lf uses terminal sixels to display previews in full quality! No weird x11 hacks like ueberzug!" >}}

## Running

Run lf by pressing <kbd>MOD(alt) + o</kbd>, or type press <kbd>ctrl+o</kbd> inside the terminal (or just simply type lf there).

## Bindings
### [🗎 PDF cheat sheet](/lf_guide.pdf)
- <kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd> <kbd>l</kbd> (vim keys) to move around and enter directories and open files.
- <kbd>gg</kbd>, <kbd>G</kbd>, <kbd>ctrl-d</kbd>,  <kbd>ctrl-u</kbd> -- movement like in vim.
- <kbd>q</kbd> -- exit lf and get back to the shell if you had one open.
- <kbd>space</kbd> -- select files:
	- <kbd>d</kbd> -- cut files to lf's clipboard.
	- <kbd>y</kbd> -- yank files to lf's clipboard.
	- <kbd>p</kbd> -- paste/move copied/cut files.
	- <kbd>Yf</kbd> -- copy currently focused file to system clipboard.
	- <kbd>Yd</kbd> -- copy current working directory to system clipboard.
	- <kbd>r</kbd> -- rename currently focused file.
	- <kbd>B</kbd> -- **bulk rename**: use vidir to mass edit all files in the directory.
- <kbd>s</kbd> -- sort files by a different metric.
- <kbd>z</kbd> -- show extra data.
- <kbd>.</kbd> -- show hidden files.

This list is not exhaustive. See `man lf` and the lf configuration files for more.

## lf's configuration files

- `~/.confif/lf/lfrc` -- The main lf configuration.
- `~/.config/lf/scope` -- The file that determines which commands generates previews for files.

The other files in the `~/.config/lf/` directory are run automatically when needed.

---

## Notes

Notice that `alias lf` will tell you that technically you are running the
wrapper script `lfrun` when you run `lf`. This has to do with `sixel previews`.
