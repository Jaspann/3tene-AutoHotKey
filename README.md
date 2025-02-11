# 3tene-AutoHotKey
*Use 3tene shortcuts from anywhere on your computer*

This script allows 3tene users to control their character via 
the "Shortcut 1" or "Shortcut 2" keyboard key binds even when they are not 
focused on the 3tene window.

### Requirements: 
- Windows 11
- [3teneFree](https://store.steampowered.com/app/871170/3tene/)
- [AutoHotKey v1.1 or v2](https://www.autohotkey.com/)

## Instructions:
Default configuration - Using the num pad:
1. Save a copy of the `.ahk` file that matches your AHK version to your computer in a place that is easily accessible (Like the home screen or in a folder you use with 3tene).
2. In 3tene, open settings (gear icon), then go to the "Shortcut 1" or "Shortcut 2" tabs
3. Under the "keyboard" column, assign shortcuts that you want using the top row numbers (0-9).
4. Activate the script by double clicking the script on the home screen or through your file explorer. 
5. Do NOT minimize 3tene. Leave the window open (it can be in the background) or else the script will not work.
6. Your hotkeys should now work by using the numpad numbers!

To deactivate the script, press `control` + `q`

Custom Configuration *Advanced*:

7. To change the hotkeys used inside and outside of 3tene, the script will need to be edited. Open the script with notepad or a code editor.
8. Inside `shortcut_map`, the left value is the external shortcut you press to activate the script, while the right value is what is being sent to 3tene
9. You can have as many commands as you like by copying and editing lines in the `shortcut_map`, but be aware that 3tene only accepts single button input, and AutoHotKey uses special notation for buttons like `control` `alt` and `shift`. You can view the documentation here: https://www.autohotkey.com/docs/v2/KeyList.htm

