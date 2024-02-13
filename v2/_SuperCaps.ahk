#Requires AutoHotkey v2.0
~CapsLock & r:: Reload
~CapsLock & e:: Run("vscode://file/" A_ScriptDir)
; *CapsLock:: SetCapsLockState(0)
; +CapsLock:: SetCapsLockState(!GetKeyState("CapsLock", "T"))
CapsLock:: {
    if KeyWait("CapsLock", "T.2") {
        SetCapsLockState(!GetKeyState("CapsLock", "T"))
    }
    else {
        Return
    }
    KeyWait("CapsLock")
}
^Space:: WinSetAlwaysOnTop -1, "A"