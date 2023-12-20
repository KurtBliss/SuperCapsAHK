
appFlapper(exe, altlaunch:=false) {
    IfWinExist, ahk_exe %exe%
        IfWinActive 
            WinMinimize
        else
            WinActivate
    else {
        if altlaunch {
            Run, %altlaunch%
        }
        else {
            Run, %exe%
        }
    }
}


; appFlapper(exe, altlaunch:=false) {
;     IfWinExist, ahk_exe %exe%
;     {
;         ; Get a list of all matching windows associated with the executable
;         WinGet, windowsList, List, ahk_exe %exe%
        
;         ; If there's only one window, activate it
;         if (windowsList = 1) {
;             WinActivate
;         }
;         else if (windowsList > 1) {
;             ; If there are multiple windows, you can implement a way to select which window to activate
;             ; For example, you can use a menu or a GUI to let the user choose the window
;             ; Here's a basic example using a MsgBox for selection:
;             WinMinimize
;             WinActivate, ahk_id %windowsList1% ; Activate the first window
;             ; You can also loop through the windows and provide the user with options to choose which one to activate
;         }
;     }
;     else {
;         if altlaunch {
;             Run, %altlaunch%
;         }
;         else {
;             Run, %exe%
;         }
;     }
; }
