#Include Script_Base_MC.ahk
#Include MC_Configuration.ahk

WindowName := "Minecraft* 1.21.4 - Multiplayer (3rd-party Server)" ; Replace to whatever your name of the window is

; 133200 ms is for how long it takes to mine 131 cobblestone blocks. around 900 ms for 1 cobblestone block

Hotkey("[", Mining) ; [
Hotkey("]", MiningSubscription) ; ]
Hotkey("\", Harvesting) ; \

Mining(Hotkey) {
    if (!Active()) {
        return
    }
    BlockInput("MouseMove")
    Send("{" . KeyBindHit . " down}")
    ExactSleep(133200)
    Send("{" . KeyBind2 . " down}")
    Send("{" . KeyBind2 . " up}")
    ExactSleep(133200)
    Send("{" . KeyBind3 . " down}")
    Send("{" . KeyBind3 . " up}")
    ExactSleep(133200)
    Send("{" . KeyBind4 . " down}")
    Send("{" . KeyBind4 . " up}")
    ExactSleep(133200)
    Send("{" . KeyBind5 . " down}")
    Send("{" . KeyBind5 . " up}")
    ExactSleep(133200)
    Send("{" . KeyBind6 . " down}")
    Send("{" . KeyBind6 . " up}")
    ExactSleep(133200)
    Send("{" . KeyBind7 . " down}")
    Send("{" . KeyBind7 . " up}")
    ExactSleep(133200)
    Send("{" . KeyBind8 . " down}")
    Send("{" . KeyBind8 . " up}")
    ExactSleep(133200)
    Send("{" . KeyBind9 . " down}")
    Send("{" . KeyBind9 . " up}")
    Send("{" . KeyBindHit . " up}")
    BlockInput("MouseMoveOff")
    return
}

Toggle := false
MiningSubscription(Hotkey) {
    Global Toggle
    Toggle := !Toggle

    if (!Active()) {
        return
    }
    If (Toggle) {
        Send("{" . KeyBindHit . " down}")
        BlockInput("MouseMove")
    } else {
        Send("{" . KeyBindHit . " up}")
        BlockInput("MouseMoveOff")
    }
}

Harvesting(Hotkey) {
    if (!Active()) {
        return
    }
    BlockInput("MouseMove")
    Send("{" . KeybindPlace . " down}")
    ExactSleep(15500)
    Send("{" . KeyBind2 . " down}")
    Send("{" . KeyBind2 . " up}")
    ExactSleep(15500)
    Send("{" . KeyBind3 . " down}")
    Send("{" . KeyBind3 . " up}")
    ExactSleep(15500)
    Send("{" . KeyBind4 . " down}")
    Send("{" . KeyBind4 . " up}")
    ExactSleep(15500)
    Send("{" . KeyBind5 . " down}")
    Send("{" . KeyBind5 . " up}")
    ExactSleep(15500)
    Send("{" . KeyBind6 . " down}")
    Send("{" . KeyBind6 . " up}")
    ExactSleep(15500)
    Send("{" . KeyBind7 . " down}")
    Send("{" . KeyBind7 . " up}")
    ExactSleep(15500)
    Send("{" . KeyBind8 . " down}")
    Send("{" . KeyBind8 . " up}")
    ExactSleep(15500)
    Send("{" . KeyBind9 . " down}")
    Send("{" . KeyBind9 . " up}")
    Send("{" . KeybindPlace . " up}")
    BlockInput("MouseMoveOff")
    return
}