; Window always on top
^SPACE::  Winset, Alwaysontop, , A

; Window to next display
CapsLock & Space::send, {LWinDown}{ShiftDown}{Left}{LWinUp}{ShiftUp}

; Window Maximize
CapsLock & s::Send, {LWinDown}{Down}{LWinUp}

; Window Minimize
CapsLock & a::Send, {LWinDown}{Up}{LWinUp}

; Chane Desktop With Caps and Scroll
; CapsLock & WheelUp::Send, ^#{Left}
; CapsLock & WheelDown::Send, ^#{Right}

; Window Close
CapsLock & q::WinClose A

; Windows Zoom  with win + scroll 
; #WheelUp:: Send, #=
; #WheelDown:: Send, #-

; Show Mouse Cursor
;CapsLock & M::DllCall( "ShowCursor", UInt,1 )

; Horizontal Scrolling
; RAlt & WheelUp::                            ; Scroll left.
;     ControlGetFocus, control, A
;     SendMessage, 0x114, 0, 0, %control%, A      ; 0x114 is WM_HSCROLL
;     return
; RAlt & WheelDown::                          ; Scroll right.
;     ControlGetFocus, control, A
;     SendMessage, 0x114, 1, 0, %control%, A      
;     return

; Resizing Window / Good for applications that are too big for monitor (ex: netbook)
; LAlt & WheelUp:: ResizeWin(100, 100, -50, -50, 1)
; LAlt & WheelDown:: ResizeWin(-100, -100, 50,   50, 1)
; CapsLock & Right::ResizeWin(25, 0, 0, 0, 1)
; CapsLock & Left::ResizeWin(-25, 0, 0, 0, 1)
; CapsLock & Up::ResizeWin(0, -25, 0, 0, 1)
; CapsLock & Down::ResizeWin(0, 25, 0, 0, 1)
; CapsLock & Numpad6::ResizeWin(0, 0, 25, 0, 1)
; CapsLock & Numpad4::ResizeWin(0, 0, -25, 0, 1)
; CapsLock & Numpad8::ResizeWin(0, 0, 0, -25, 1)
; CapsLock & Numpad2::ResizeWin(0, 0, 0, 25, 1)
; ResizeWin(Width = 0,Height = 0, PosX = 0, PosY = 0, REL = 0)
; {
;     WinGetPos,X,Y,W,H,A
;     If (%REL% = 0 )
;     {
;         If not (%Width% = 0) 
;             W := %Width%
;         If not (%Height% = 0) 
;             H := Height
;         If not (%PosX% = 0) 
;             X := PosX
;         If not (%PosY% = 0) 
;             Y := PosY
;     } 
;     Else
;     {
;         W += Width
;         H += Height
;         X += PosX
;         Y += PosY
;     }
;     WinMove,A,,%X%,%Y%,%W%,%H%
; }
