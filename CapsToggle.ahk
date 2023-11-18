
SetCapsLockState alwaysoff

; Prepare CapsLock key for Shortcuts
+CapsLock::
    GetKeyState, state, CapsLock, T ;  D if CapsLock is ON or U otherwise.
    if (state = "D")
        SetCapsLockState alwaysoff
    else
        SetCapsLockState on 
    Return

CapsLock::
    GetKeyState, state, CapsLock, T ;  D if CapsLock is ON or U otherwise.
    if (state = "U") 
        SetCapsLockState alwaysoff
    Return


