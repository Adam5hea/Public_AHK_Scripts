#Include Script_Base.ahk
#Include Configuration.ahk
WindowName := "Grand Theft Auto V"

Hotkey("~$^1", CayoStart) ; Ctrl + Mouse Wheel

CayoStart(Hotkey) {
    if (!Active()) {
        return
    }
    ; Approach Vehicle
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}")
        ExactSleep(50)
    }
    ; Infiltration Point
    Send("{" . KeyBindBackspace . " down}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " up}")
    ExactSleep(75)
    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(75)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(75)
    Send("{" . KeyBindUpArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindUpArrow . " up}")
    ExactSleep(75)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(75)
    Send("{" . KeyBindBackspace . " down}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " up}")
    ExactSleep(75)
    ; Compound Entry Point

    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(75)
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}")
        ExactSleep(75)
    }
    Send("{" . KeyBindBackspace . " down}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " up}")
    ExactSleep(75)
    ; Escape Point
    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(75)
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}")
        ExactSleep(75)
    }
    Send("{" . KeyBindBackspace . " down}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " up}")
    ExactSleep(75)
    ; Time of Day
    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(75)
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}")
        ExactSleep(75)
    }
    Send("{" . KeyBindBackspace . " down}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " up}")
    ExactSleep(75)
    Send("{" . KeyBindMoveRight . " down}")
    ExactSleep(50)
    Send("{" . KeyBindMoveRight . " up}")
    ExactSleep(75)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(150)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(75)
}