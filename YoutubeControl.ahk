CapsLock & 1:: SendToYoutubePlayer("j") ;seek backwards
CapsLock & 2:: SendToYoutubePlayer("k") ;play pause
CapsLock & 3::  SendToYoutubePlayer("l") ;seek forwards
SendToYoutubePlayer(key) {
    WinGet, return_to_window
    if WinExist("YouTube") { ; Install youtube.com as app on your web browser named "Youtube"
        WinActivate
        Sleep, 100
        if WinActive("YouTube")
            Send, %key%
        Sleep, 50
        Send, {AltDown}{Tab}{AltUp}
        WinActivate, return_to_window
    }
}