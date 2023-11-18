; Edit
CapsLock & e:: 
    if (A_IsCompiled) {
        Run, %A_ScriptDir%
    } else {
        Run, vscode://file/%A_ScriptDir%
    }
    Return

