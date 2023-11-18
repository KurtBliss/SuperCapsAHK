#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Scripts
#include, AlarmClock.ahk ; Def: tap caps + v to clear notification popup, hold to launch the windows clock app
#include, AppFlapper.ahk ; Toggles if programs are minimized and starts if not started 
#include, AutoHideDesktop.ahk ; Auto hides desktop icons until and shows them after double clicking desktop
#include, CapsEdit.ahk ; caps + e to edit project in visual studio code
#include, CapsToggle.ahk ; you can only toggle caps with shift+caps to prevent changing capslock while using hotkeys
#include, HandleWindowKeyboard.ahk
#include, HandleWindowMouse.ahk ; LAlt + Lmousebutton and drag to move around any window or one with tilebar off screen
#include, ProgramShortcuts.ahk 
#include, WebSearch.ahk ; Ctrl + C will copy text then search for it on your default web browserS
CapsLock & r::Reload

;   #   Windows
;   !   Alt
;   ^   Ctrl
;   +   Shift

