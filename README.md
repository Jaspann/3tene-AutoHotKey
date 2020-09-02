# 3tene-AutoHotKey
Using 3tene Expressions While Focused on Other Windows

Using 3tene shortcuts while you are focused on another window does not work, to fix this, we need to use a simple AutoHotKey (AHK) script to convert our actions from the current window we are on back to 3tene. I wrote and tested this on Windows 10 on September 1st, 2020.

Obviously, you need 3tene, if you don’t have it yet you can download it from Steam for free here: https://store.steampowered.com/app/871170/3tene/ (tested with3teneFREE version 2 2.0.2 for Windows, the latest version at the time I created this).

You will also need AutoHotKey to run the script, you can download it for free here: https://www.autohotkey.com/ (tested with v1.1.33.02 for Windows, also the latest version at the time I created this).

Sidenote: One of the main problems I had with this script was that AHK can not tell 3tene to use Numpad/keypad keys. Some parts of this script/instructions seem unnecessary, but it is mostly due to workarounds with 3tene. I also have limited knowledge of AHK, but I saw many people with this issue so I thought I would at least create some solution, even if it is not a perfect fix.

BASICS
If you don’t really care about the programming/presets, AND have a Numpad, all you need to do is download the file, make sure it is running and set your expression shortcuts to what I have below. A few important things first though:
* To stop the script, the shortcut is ctrl + q
* Make sure num lock is on
* You will need to make sure the script is running whenever you want to use it, the simplest way is just to keep it on your home screen right next to your 3tene shortcut and double click it once you have 3tene set up
* You can set any of the Numpad numbers in addition to the Numpad “+” and ”-” signs. Below I have the way I like it, but you can set it up any way you want 
* Numbers on the Numpad and across the top of the keyboard are different for 3tene. Using top row numbers when assigning shortcuts in 3tene will be recorded as AlphaX, while a keypad number will be recorded as KeypadX.  even though you will be pressing the Numpad to activate the emotes, MAKE SURE you use the NUMBERS AND + / - from the TOP OF THE KEYBOARD or else it will not work (3tene’s shortcuts should all be Alpha1, Alpha2, etc … if it says Keypad1 it WILL NOT WORK)
* Make sure to NOT have 3tene CLOSED while you are using it. Emotes WILL NOT WORK if it is minimized. It is ok if it is behind another window or if another window is fullscreen.

When you have 3tene open, put these shortcuts into shortcut2 under options. 

1. Reset Webcam Position → 0 (Alpha0)
1. (Expression)Neutral → 5 (Alpha5)
1. (Expression)Angary → 1 (Alpha1)
1. (Expression)Sorrow → 3 (Alpha3)
1. (Expression)Joy → 9 (Alpha9)
1. (Expression)Happy → 7 (Alpha7)
1. (Expression)brink → equals (the key to the left of backspace)
1. (Expression)LookUp → 8 (Alpha8)
1. (Expression)LookDown → 2 (Alpha2)
1. (Expression)LookLeft → 4 (Alpha4) OR 6 (Alpha6)
1. (Expression)LookRight → 6 (Alpha6) OR 4 (Alpha4)
1. Surprised → minus (between 0 and equals)

You can use whatever expressions, poses, etc on whatever numbers you want, but you will only be able to work with the numbers on the left if you don’t want to work on the code.

After putting in those shortcuts you should be set to go! If you want to customize or understand how the script works, continue reading.

Each key to be sent to 3tene is five lines in AHK, here is an example of it below:

```
Numpad1::
ControlFocus,, ahk_exe 3tene.exe
ControlSend,,1, ahk_exe 3tene.exe
ControlClick,,ahk_exe 3tene.exe,,,,NA
return
```

The first line is just what you need to type to activate the command to be sent to 3tene, if you want to have it set to the key “p” for example, all you need to do is put in the letter: p. To see the full list of keys, use this link: https://www.autohotkey.com/docs/KeyList.htm 

The second line just finds 3tene to be used for the other lines, no change is necessary.

On the third line we want to send our keystroke to 3tene, if we use the “p” example from before, all you would need to do is put in the letter p in here as well. From what I can tell this works fine for everything EXCEPT NUMKEY / KEYPAD KEYS!!! I spent hours on this and I believe 3tene does not understand AHK when it sends keypad keys. This is why we need to use another key instead, so I chose the top row number keys to be consistent with the Numpad keys. This should not interfere with any other applications you are running. 

By default, 3tene will not look for any key shortcuts until we click back on the app. To fix this we add the fourth line so we click it, but the NA at the end means that only 3tene will update, rather than bringing the window upfront.

Return stops the script from continuing on to the next section of code.

To add new keys, just copy and paste the code and make changes in the first and third lines. Just delete a group of five lines if you don’t need any part of it anymore. Make sure to make the equivalent changes in 3tene and reload the script after making any changes.
