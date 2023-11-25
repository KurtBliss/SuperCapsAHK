#Requires AutoHotkey v2.0
~CapsLock & r:: Reload
~CapsLock & e:: Run("vscode://file/" A_ScriptDir)
*CapsLock:: SetCapsLockState(0)
+CapsLock:: SetCapsLockState(!GetKeyState("CapsLock", "T"))
^Space:: WinSetAlwaysOnTop -1, "A"
