#Requires AutoHotkey 1.1.34.03

CapsLock & w::AppFlapper("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe")
#space::appFlapper("C:\Windows\System32\notepad.exe")
CapsLock & d::
    EnvGet, UserProfileEnv, USERPROFILE
    appFlapper( UserProfileEnv . "\AppData\Local\Programs\Microsoft VS Code\Code.exe")     
    return
CapsLock & f:: 
    ; Store the current working directory
    currentDir := A_WorkingDir
    EnvGet, UserProfileEnv, USERPROFILE
    SetWorkingDir, %UserProfileEnv%\AppData\Local\Discord\
    ; Get a list of all subfolders in the directory
    Loop, Files, * , d
    {
        ; Store the folder name in the variable "folder"
        folder := A_LoopFileName
        ; Check if the folder name starts with "app-"
        if (SubStr(folder, 1, 4) = "app-")
        {
            ; Update the newest folder if a newer version is found
            if (folder > newestFolder)
                newestFolder := folder
        }
    }
    ; Restore the previous working directory
    SetWorkingDir, %currentDir%
    appFlapper( UserProfileEnv . "\AppData\Local\Discord\" . newestFolder .  "\Discord.exe")
    return
CapsLock & c::
    EnvGet, UserProfileEnv, USERPROFILE
    if WinActive("GitHub Desktop") {
        WinMinimize
    } else {
        appFlapper( UserProfileEnv . "\AppData\Local\GitHubDesktop\GitHubDesktop.exe")
    }
    return