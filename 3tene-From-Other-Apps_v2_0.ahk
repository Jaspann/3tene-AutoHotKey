#Requires AutoHotkey v2.0

#Warn  ; Enable warnings to assist with detecting common errors
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory

MsgBox "3tene Shortcut Script Activated!"

; --- EDIT THIS MAP ---
shortcut_map := Map(
    "Numpad0", "0",
    "Numpad1", "1",
    "Numpad2", "2",
    "Numpad3", "3",
    "Numpad4", "4",
    "Numpad5", "5", 
    "Numpad6", "6", 
    "Numpad7", "7", 
    "Numpad8", "8", 
    "Numpad9", "9", 
)

; Other types of shortcuts you can add:

; Use Alt + `a` for shortcut key bind Alpha1
;   "!a", "1",

; Use Shift + `a` for shortcut key bind Alpha1
;   "+a", "1",

; Use Ctrl + `a` for shortcut key bind Alpha1
;   "^a", "1",

; Use Ctrl + Alt + Shift + `a` for shortcut key bind Alpha1
;   "^+!a", "1",

; The full list of keys are avalible at:
; https://www.autohotkey.com/docs/v1/KeyList.htm

; --- END OF MAP ---



; Function to handle the sending and clicking
SendKey(external_hotkey) {
    if WinExist("ahk_exe 3tene.exe") {
        hwnd := WinGetID("ahk_exe 3tene.exe")
        ControlFocus hwnd,, "ahk_exe 3tene.exe"
        ControlSend shortcut_map[external_hotkey],, "ahk_exe 3tene.exe"
    }
}

; Loop through the Map to create hotkeys
for key, value in shortcut_map {
    hotkey key, SendKey
}

^q::Quit()

Quit(){
    MsgBox "3tene Shortcut Script Deactivated!"
    ExitApp()
}
