title: DWL guide for MARBS users
author: Mariusz Kuchta

## Preamble
Whenever I refer to MOD in this article, I mean the alt key. When I refer to current window, I mean the one which currently has focus. Also try to remember and associate stuff using mnemonics. Like if MOD + w launches a web browser, you associate w with it.

## Configuration files
You can always view all the keybindings by inspecting ~/.local/src/dwl/config.h file. The file is part of the source code that defines the overall behavior of dwl. You can modify many aspects of it by changing the appreciate variables. Later, in the same directory, run makepkg -sif --noconfirm (also aliased to mkp) to recompile and reinstall dwl with the changes.

## Wallpapers
**themeset** script launches an instance of swaybg which sets the wallpaper based on the current system theme. The directory where those wallpapers are defined is at *~/.local/share/wallpapers* There you can find the *wallpaper_dark.jpg* and *wallpaper_light.jpg*. You can change them to any file you want as long as the names correspond to the aforementioned. When it comes to lock screen wallpapers, those are also in that directory and have the *_lock* suffix. They are being read by the **sus** command.

## Window Management
| Keybinding | Description |
| --- | --- |
| `MOD + j` | Go to next window in the stack |
| `MOD + k` | Go to previous window in the stack |
| `MOD + h` | Make the master window smaller |
| `MOD + l` | Make the master window bigger |
| `MOD + Enter` | Make the current window the master |
| `MOD + Shift + C` | Close the current window |
| `MOD + Number [1—9]` | View a given tag |
| `MOD + Shift + Number [1—9]` | Move the current window to a given tag |
| `MOD + Tab` | Toggle between the last two visited windows |
| `MOD + t` | Set the layout mode to tiling |
| `MOD + m` | Set the layout mode to monocle |
| `MOD + |` | Set the layout mode to equal vertical windows |
| `MOD + f` | Make the current window full screen |
| `MOD + ,` | Shift focus to the monitor left of focused monitor |
| `MOD + .` | Shift focus to the monitor right of focused monitor |
| `MOD + Shift + ,` | Move the current window to a monitor left of it |
| `MOD + Shift + .` | Move the current window to a monitor right of it |
| `MOD + '` | Toggle between the horizontal and vertical axis |
| `MOD + Mouse left hold` | Freely move the window around |
| `MOD + Shift + space` | Toggle between making a window floating or non-floating |
| `MOD + Mouse right hold` | Freely resize the window using mouse |
| `MOD + Shift + Q` | Quit dwl |

## Launching Apps
| *Keybinding* | *Description* |
| --- | --- |
| `MOD + w` | Web browser (Firefox) |
| `MOD + space` | Terminal (Zsh in the foot terminal) |
| `MOD + Shift + Enter` | Open application launcher (bemenu) |
| `MOD + o` | Open file manager (lf in the foot terminal) |
| `MOD + q` | Quick apps (script ~/.local/bin/quickact that display tofi menu) |
| `MOD + p` | Passmenu (copy password from the pass's password store) |
| `MOD + Shift + W` | Web browser (Chromium) |
| `MOD + Shift + B` | Bookmarkselect (an app which types in a given bookmark from| 
| | .local/share/snippets) |

## System Management / Media
| *Keybinding* | *Description* |
|:---|:---|
| `Audio Raise Volume button*` | Raise volume by 5% |
| `Audio Lower Volume button*` | Lower volume by 5% |
| `Audio Mute Volume button*` | Mute output device |
| `Shift + Audio Mute Volume button*` | Choose audio sink (the sound output device) |
| `Monitor Brightness Up button*` | Raise brightness by 5% |
| `Monitor Brightness Down button` | Raise brightness by 5% |
| `Microphone mute button` | Mute microphone recording |
| `MOD + Shift + T` | Toggle between dark and light system theme |
| `MOD + Shift + S` | Lock and suspend the system |
| `MOD + Ctrl + S` | Toggle auto-suspend |

## Screenshot Related
| *Keybinding* | *Description* |
| --- | --- |
| `PrintScr` | Capture a screenshot to clipboard |
| `Shift + PrintScr` | Save the screenshot from clipboard to Screenshots directory |
| `MOD + PrintScr` | Preview the screenshot in the clipboard |
| `MOD + Shift + PrtSc` | Preview the screenshots directory (at ~/.local/share/captures) |
| `MOD + Ctrl + PrtSc` | Preview the screenshot in the clipboard by scanning|
| | its text (using tesseract) |
| `Ctrl + PrintScr` | Record your screen |

## Misc
| *Keybinding* | *Description* |
| --- | --- |
| `MOD + b` | Toggle status bar visibility |
| `MOD + Ctrl + w` | Toggle warp cursor |

\* These buttons might be activated by pressing FN on your keyboard with the appropriate pictogram which is usually present in the F1—F12 row of your keyboard.

## Further reading
If you have never used a dynamic tiler, I urge you to read Dave’s Visual Guide to dwm (https://ratfactor.com/dwm) to get better understanding of window tiling and navigation. It is one of the best resources about it out there 
