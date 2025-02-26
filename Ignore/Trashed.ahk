Hotkey("~$^tab", VehicleHelmetEquip) ; Ctrl + Tab

VehicleHelmetEquip(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
    ExactSleep(100)
    loop (5) {
        Send("{" . KeyBindDownArrow . " down}")
        ExactSleep(50)
        Send("{" . KeyBindDownArrow . " up}")
        ExactSleep(50)
    }
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    loop (3) {
        Send("{" . KeyBindDownArrow . " down}")
        ExactSleep(50)
        Send("{" . KeyBindDownArrow . " up}")
        ExactSleep(50)
    }
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " down}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " up}")
    ExactSleep(50)
    Send("{" . KeyBindF . " down}")
    ExactSleep(50)
    Send("{" . KeyBindF . " up}")
    ExactSleep(50)
    loop (5) {
        Send("{" . KeyBindUpArrow . " down}")
        ExactSleep(50)
        Send("{" . KeyBindUpArrow . " up}")
        ExactSleep(50)
    }
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    Send("{" . KeybindLeftArrow . " down}")
    ExactSleep(50)
    Send("{" . KeybindLeftArrow . " up}")
    ExactSleep(50)
    Send("{" . KeybindRightArrow . " down}")
    ExactSleep(50)
    Send("{" . KeybindRightArrow . " up}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
    ExactSleep(50)
}


CayoStart(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeybindE . " down}")
    ExactSleep(50)
    Send("{" . KeybindE . " up}")
    ExactSleep(5100)
    loop (2) {
        Send("{" . KeyBindE . " down}")
        ExactSleep(75)
        Send("{" . KeyBindE . " up}")
        ExactSleep(75)
    }
    Send("{" . KeyBindMoveRight . " down}")
    ExactSleep(50)
    Send("{" . KeyBindMoveRight . " up}")
    ExactSleep(100)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(4000)
    Send("{" . KeyBindUpArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindUpArrow . " up}")
    ExactSleep(150)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}") ; Enters Menu to start the heist
    ExactSleep(250)
    Send("{" . KeyBindUpArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindUpArrow . " up}")
    ExactSleep(300)
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}") ; Presses Play button on the heist and accepts solo play
        ExactSleep(150)
    }
    ExactSleep(300)
    ; Approach Vehicle
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}")
        ExactSleep(75)
    }
    ExactSleep(100)
    Send("{" . KeyBindBackspace . " down}")
    ExactSleep(50)
    Send("{" . KeyBindBackspace . " up}")
    ExactSleep(75)
    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(75)
}