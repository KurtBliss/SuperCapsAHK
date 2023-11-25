#Requires AutoHotkey 1.1.34.03

; TimerV
CapsLock & v:: 
    Start := A_Now
    ; KeyWait, v
    ; Duration := (A_Now - Start) * 60
    Duration := 0
    while GetKeyState("v", "P") {
        if (Duration > 0) {
            break
        }
        Duration := (A_Now - Start) 
    }
    ;MsgBox, %Duration%
    if (Duration > 0) {
        Run, "shell:Appsfolder\Microsoft.WindowsAlarms_8wekyb3d8bbwe!App"
    } else {
        Send, +#V
        Sleep, 100
        WinGetClass, ActiveWinClass, A
        ; WinGetTitle, ActiveWinTitle, A
        ; ToolTip, %ActiveWinTitle%
        if (ActiveWinClass == "Windows.UI.Core.CoreWindow") {
            Send, {Delete}
        } else {
            ;Run, "C:\Users\kurtb\Alarms & Clock.lnk"
        }
    }
    KeyWait, CapsLock
    KeyWait, V
Return