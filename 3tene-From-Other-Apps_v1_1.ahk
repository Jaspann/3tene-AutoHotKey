#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


MsgBox, 3tene Shortcut Script Activated!


; --- EDIT THIS MAP ---
; AHK v1.1 is very picky about the formatting of this, 
; so make sure the spacing is the same as I have it.

shortcut_map := { "Numpad0": "0"
, "Numpad1": "1"
, "Numpad2": "2"
, "Numpad3": "3"
, "Numpad4": "4"
, "Numpad5": "5"
, "Numpad6": "6"
, "Numpad7": "7"
, "Numpad8": "8"
, "Numpad9": "9"}

; Other types of shortcuts you can add:

; Use Alt + `a` for shortcut key bind Alpha1
;, "!a": "1"

; Use Shift + `a` for shortcut key bind Alpha1
;, "+a": "1"

; Use Ctrl + `a` for shortcut key bind Alpha1
;, "^a": "1"

; Use Ctrl + Alt + Shift + `a` for shortcut key bind Alpha1
;, "^+!a": "1"

; The full list of keys are avalible at:
; https://www.autohotkey.com/docs/v1/KeyList.htm

; --- END OF MAP ---




; Loop through the Map to create hotkeys
for key, value in shortcut_map {
    Hotkey, %key%, SendKey
}

; Function to handle the sending and clicking
SendKey:
    key := shortcut_map[A_ThisHotkey]
    if WinExist("ahk_exe 3tene.exe") {
        ControlFocus,, ahk_exe 3tene.exe
        ControlSend,, %key%, ahk_exe 3tene.exe
    }
return

^q::
MsgBox, 3tene Shortcut Script Deactivated!
ExitApp