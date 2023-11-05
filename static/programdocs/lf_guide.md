title: LF guide
author: Mariusz Kuchta

# Preamble
Mind the case sensitivity here

## Naviagation (basically vim style movement)
- `j` — move down
- `k` — move up
- `h` — go up the directory
- `l` — go into the directory
- `G` — go to the bottom of current directory
- `gg` — go to the beginning of current directory
- `f` — find by the first letter of a file/directory
- `Ctrl+d` — scroll by half a page down in the directory
- `Ctrl+u` — scroll by half a page up in the directory
- `.` — show hidden files
- `/` — search for something in the current directory
- `n` — find next occurrence of something you searched
- `N` — find previous occurrence of something you searched
- `Z` — go to the middle of a directory
- `Ctrl-f` — fuzzy find a file or directory and move there
- `q` — quit lf
- `m` — save a mark at current location
- `'` — load marks, you will see what marks you have saved. There's a special one which holds your last position of your significant location - i.e. one which wasn't done by h or l keybinding. It is: ', so if you press double '' you get to that previous location.
- `g*` — go to one of the folders defined in .config/shell/bm-dirs
- `E*` — Edit one of the files defined in .config/shell/bm-files


## Basic manipulation
- `space` — select files
- `d` – cut files to lf’s clipboard *
- `y` – yank files to lf’s clipboard *
- `DD` — trash file/files *
- `Dr` — restore file/files *
- `p` – paste/move copied/cut files
- `v` — invert selection
- `r` — rename a file

\* If there are files selected, then do the following with respect to those. If none are selected, do it to the file that is currently focused.

## Filtering and sorting
- `s*` — sort by something. After typing s you get the idea
- `wi` — set filter so that only the files/dirs that match it are displayed
- `wc` — clear filter

