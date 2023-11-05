title: DWL guide for MARBS users
author: Mariusz Kuchta

## Preamble
Whenever I refer to MOD in this article, I mean the alt key. When I refer to current window, I mean the one which currently has a focus. Also try to remember and associate stuff using mnemonics. Like if MOD + w launches a web browser, you associate w with it.

## Configuration files
You can always view all the keybindings by inspecting ~/.local/src/dwl/config.h file. The file is part of the source code that defines the overall behavior of dwl. You can modify many aspects of it by changing the appreciate variables. Later, in the same directory, run makepkg -sif to recompile and reinstall dwl with the changes.

## Window management
- MOD + j — go to next window in the stack
- MOD + k — go to previous window in the stack
- MOD + Enter — make the current window the master
- MOD + Shift + c — close the current window
- MOD + Number [1—9] — view a given tag
- MOD + Shift + Number [1—9] — move the current window to a given tag
- MOD + Tab — toggle between the last two visited windows
- MOD + t — set the layout mode to tiling
- MOD + m — set the layout mode to monocle
- MOD + | — set the layout mode to equal vertical windows
- MOD + f — make the current window full screen (this is different to setting the layout to monocle)
- MOD + , — shift focus to the monitor left of focused monitor
- MOD + . — shift focus to the monitor right of focused monitor (if you have only two monitors, it doesn't really matter as it wraps around)
- MOD + Shift + , — move the current window to a monitor left of it MOD + Shift + . — move the current window to a monitor right of it
- MOD + Mouse left hold — freely move the window around. This makes your window no longer tiled but rather floating! To make it tile itself again, press MOD + Shift + Space.
- MOD + Shift + space — toggle between making a given window floating or non—floating.
- MOD + Mouse right hold — freely resize the window using mouse. Again this makes your window floating.

## Launching apps 
- MOD + w — web browser (Librewolf) 
- MOD + space — terminal (Zsh in the foot terminal)
- MOD + Shift + Enter — open application launcher (bemenu)
- MOD + o — open file manager (lf in the foot terminal)
- MOD + q — quick apps (script ~/.local/bin/quickact that display tofi menu)
- MOD + Shift + w — web browser (Chromium)
- MOD + Shift + b — bookmarkselect (an app which types in a given bookmark from .local/share/snippets)

## System management
- Audio Raise Volume button* — raise volume by 5%
- Audio Lower Volume button* — lower volume by 5%
- Audio Mute Volume button* — mute
- Monitor Brightness Up button* — raise brightness by 5%
- Monitor Brightness Down button — raise brightness by 5%
- MOD + Shift + T — Toggle between dark and light system theme
- MOD + Shift + S — Lock and sleep/suspend the system

## Screenshot related
- PrintScr — capture a screenshot to clipboard
- Shift + PrtintScr — save the screenshot from clipboard to Screenshots directory
- MOD + PrintScr — preview the screenshot in the clipboard
- MOD + Shift + PrintScr — preview the Screenshots directory
- MOD + Ctrl + PrintScr — preview the screenshot in the clipboard by scanning its text (using tesseract)
- FN + PrintScr — record your screen

## Misc
- MOD + b — toggle status bar visibility

\* These buttons might be activated by pressing FN on your keyboard with the appropriate pictogram which is usually present in the F1—F12 row of your keyboard.

