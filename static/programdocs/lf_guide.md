title: LF guide
author: Mariusz Kuchta

# Configuration files
Everything lf related is inside *~/.config/lf* main *lfrc* configuration file holds most of the config. *preview* script defines file preview, *icons* the look of lf's icons, *xdg-filepicker* folder contains configuration specific to when lf is being asked to select or save a file by an external program and *pseudoapps/lfrecorder* is a simple recorder built on top of lf.

# Keybindings preamble
Mind the case sensitivity here. You can view every keybinding by running the **maps** inside lf's command mode *(activated with :)*. Most of the commands can be prefixed with a number to do the given action number times. 

| *Keybinding* | *Description* |
| --- | --- |
| `j` | move down |
| `k` | move up |
| `h` | go up the directory |
| `l` | go into the directory |
| `G` | go to the bottom of current directory |
| `gg` | go to the beginning of current directory |
| `f` | find by the first letter of a file/directory |
| `;` | next entry by the first letter that was found with `f` |
| `,` | previous entry by the first letter that was found with `f` |
| `Ctrl+d` | scroll by half a page down in the directory |
| `Ctrl+u` | scroll by half a page up in the directory |
| `.` | show hidden files |
| `/` | search for something in the current directory |
| `n` | find next occurrence of something you searched |
| `N` | find previous occurrence of something you searched |
| `Z` | go to the middle of a directory |
| `Ctrl+f` | fuzzy find a file or directory and move there (using fzf) |
| `Ctrl+g` | fuzzy search contents of all files starting from current directory (using telescope) |
| `Ctrl+e` | fuzzy find a directory |
| `Ctrl+l` | if focused file is a symbolic link, travel to the actual location |
| `q` | quit lf |
| `m` | save a mark at current location |
| `O` | Select what you want to open focused file with |
| `'` | load marks, you will see what marks you have saved |
| `<Tab>` | Same as `''` Go to the last significant location |
| `g*` | go to one of the folders defined in .config/shell/bm-dirs |
| `E*` | Edit one of the files defined in .config/shell/bm-files |
| `at` | Go to *~/atm* folder |
| `gtm` | Go to */tmp/$USER-tmp* folder |
| `g/` | Go to */* root folder |

## Basic manipulation
| *Keybinding* | *Description* |
| --- | --- |
| `space` | select files |
| `u` | unselect all files |
| `d` | cut files to lf’s clipboard |
| `y` | yank files to lf’s clipboard |
| `c` | clear yanked/cut items |
| `DD` | trash file/files |
| `Dr` | restore file/files |
| `Dl` | Delete soft links |
| `p` | paste/move copied/cut files |
| `v` | invert selection |
| `r` | rename a file |
| `R` | rename file extension |
| `B` | bulk rename files in current directory (opens up nvim) |
| `P` | paste as symbolic link |
| `Md` | make a directory |
| `Mf` | make a file |
| `Mo` | change the file's owner |
| `Me` | make the file executable |
| `Tt` | convert focused item from one format to another (works for image, audio and video) |
| `Tv` | vectorize a given image |
| `ei` | edit file in nvim |

## Filtering, sorting and displaying
| *Keybinding* | *Description* |
| --- | --- |
| `s*` | sort by info |
| `z*` | display extra info |
| `x` | calculate the directory size |
| `wi` | set filter so that only the files/dirs that match it are displayed |
| `wc` | clear filter |

## Free command execution
| *Keybinding* | *Description* |
| --- | --- |
| `:` | execute lf command mode |
| `!` | execute shell synchronously and wait for confirmation |
| `$` | execute shell synchronously but quit when command is done |
| `•` or `&` | execute shell asynchronously without getting output |
| `<c-p>` | go back in execution history |
| `<c-n>` | go forward in execution history |

## Misc
| *Keybinding* | *Description* |
| --- | --- |
| `Yf` | copy path of the currently focused file to clipboard |
| `Yd` | copy path of the currently working directory to clipboard |
| `Ya` | copy contents of the currently focused file to clipboard |
| `au` | unarchive focused file |
| `t` | tag files |
| `Ctrl + r` | reload lf window |
| `f1` | open up lf documentation |
| `Su` | switch to sudo lf
