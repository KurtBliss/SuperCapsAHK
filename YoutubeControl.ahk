SendToYoutubePlayer(key) {
    WinGet, ReturnToWindow, ID, A  ; Get the ID of the active window
    if WinExist("YouTube") {
        WinActivate ; Activate the script's main window (assuming it's not YouTube)2
        if WinActive("YouTube") {
            Send, %key%
            Sleep, 1
            WinActivate, ahk_id %ReturnToWindow% ; Activate the previously active window
        }
    }
}
CapsLock & 1:: SendToYoutubePlayer("j") ;seek backwards
CapsLock & 2:: SendToYoutubePlayer("k") ;play 
CapsLock & 3:: SendToYoutubePlayer("l") ;seek forwards