#Requires AutoHotkey 1.1.34.03

; DuckDuckGo Search 
^+c::
Send, ^c
Sleep 250
Run, https://duckduckgo.com/?q=%clipboard%
return