#IfWinActive, ahk_exe aseprite.exe
    !1:: 
        MouseGetPos saveX, saveY
        saveX -= 600
        MouseMove %saveX%, %saveY%
        return
    !2:: 
        MouseGetPos saveX, saveY
        saveX +=  600
        MouseMove %saveX%, %saveY%
        return
    return
#IfWinActive
return