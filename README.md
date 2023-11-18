# SuperCapsAHK

SuperCapsAHK is a collection of AutoHotkey scripts that enhance the functionality of the CapsLock key. It allows you to use CapsLock as a modifier key to perform various actions, such as launching applications, editing text, searching the web, and more.

## How to use

1. Download and install AutoHotkey.
2. Download or clone this repo to your local machine.
3. Run the `_SuperCaps.ahk` script to load all the other scripts.
4. Press `CapsLock` + any of the following keys to activate the corresponding script:

## Key bindings

### _SuperCaps.ahk
- **CapsLock + R**: Reloads the script.

### CapsToggle.ahk
- **Shift + CapsLock**: Checks the state of the `CapsLock` key and toggles it.
- **CapsLock**: If `CapsLock` is off, it keeps it off.

### CapsEdit.ahk
- **CapsLock + E**: Opens the current script directory. If the script is compiled, it opens the directory in the default file explorer. Otherwise, it opens the directory in Visual Studio Code.

### AlarmClock.ahk
- **CapsLock + V**: Starts a timer. If `V` is held down, it opens the Alarms & Clock app. If `V` is not held down, it sends the shortcut `Shift + Ctrl + V`.

### AutoHideDesktop.ahk
- **Left Mouse Click**: Triggers a system-wide event. When the desktop is clicked, it toggles the visibility of the desktop icons. If the desktop remains inactive for 30 seconds, the icons are automatically hidden.

### HandleWindowKeyboard.ahk
- **Ctrl + Space**: Toggles the current window’s “always on top” state.
- **CapsLock + Space**: Moves the current window to the next display.
- **CapsLock + S**: Maximizes the current window.
- **CapsLock + A**: Minimizes the current window.
- **CapsLock + Q**: Closes the current window.

### HandleWindowMouse.ahk
- **Left Alt + Left Mouse Button**: Activates a window drag operation, allowing you to move the window by clicking anywhere within it. This is particularly useful for smaller monitors or for moving windows that typically restrict movement.

### WebSearch.ahk
- **Ctrl + Shift + C**: Copies the selected text and performs a DuckDuckGo search using the copied text.
