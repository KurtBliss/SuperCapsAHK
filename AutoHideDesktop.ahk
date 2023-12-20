
; Register a system-wide mouse click event for the desktop
~LButton::
    ; Get the window under the mouse cursor
    WinGet, activeWindow, ID, A
    
    ; Get the window class name for the window under the mouse cursor
    WinGetClass, activeClass, ahk_id %activeWindow%
    
    ; Check if the clicked window is the desktop
    if (activeClass = "Progman" or activeClass = "WorkerW")
    {
        ; Toggle the visibility of desktop icons
        DesktopIcons(1)

        ; Reset hide timer
        SetTimer, HideDesktop, Off
        SetTimer, HideDesktop, 30000
    }
Return

; Function to be executed after the delay
HideDesktop:
    DesktopIcons(0)
Return

DesktopIcons( Show:=-1 )
{
    Local hProgman := WinExist("ahk_class WorkerW", "FolderView") ? WinExist() : WinExist("ahk_class Progman", "FolderView")
    Local hShellDefView := DllCall("user32.dll\GetWindow", "ptr",hProgman, "int",5, "ptr")
    Local hSysListView  := DllCall("user32.dll\GetWindow", "ptr",hShellDefView, "int",5, "ptr")

    If ( DllCall("user32.dll\IsWindowVisible", "ptr",hSysListView) != Show )
        DllCall("user32.dll\SendMessage", "ptr",hShellDefView, "ptr",0x111, "ptr",0x7402, "ptr",0)
}
