#Requires AutoHotkey 1.1.34.03

; Edit
CapsLock & e:: 
    if (A_IsCompiled) {
        Run, %A_ScriptDir%
    } else {
        Run, vscode://file/%A_ScriptDir%
    }
    Return

