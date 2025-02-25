#Include Script_Base.ahk
WindowName := "Grand Theft Auto V"

Hotkey("~$^lbutton", HeavyReloadCancel)
Hotkey("~$^rbutton", SniperReloadCancel)
Hotkey("~$MButton", AmmoBuy)
Hotkey("~$+MButton", PersonalVehicleCall)
Hotkey("~$^CapsLock", BSTBuy)
Hotkey("~$+CapsLock", ArmorBuy)
; Hotkey("NULL", PassiveHealthRegen)
; Hotkey("NULL", VehicleHelmetEquip)

HeavyReloadCancel(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{r down}") ; Presses the special weapon key
    ExactSleep(50)
    Send("{r up}") ; Releases the special weapon key
    ExactSleep(50)
    Send("{3 down}") ; Presses the heavy weapon key
    ExactSleep(50)
    Send("{3 up}") ; Releases the heavy weapon key
    ExactSleep(50)
    Send("{tab down}") ; Presses the weapon wheel key
    ExactSleep(50)
    Send("{tab up}") ; Releases the weapon wheel key
    ExactSleep(50)
    Send("{lbutton down}")

}

SniperReloadCancel(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{r down}") ; Presses the special weapon key
    ExactSleep(50)
    Send("{r up}") ; Releases the special weapon key
    ExactSleep(50)
    Send("{1 down}") ; Presses the sniper rifle key
    ExactSleep(50)
    Send("{1 up}") ; Releases the sniper rifle key
    ExactSleep(50)
    Send("{tab down}") ; Presses the weapon wheel key
    ExactSleep(50)
    Send("{tab up}") ; Releases the weapon wheel key
    ExactSleep(50)
    Send("{rbutton down}") ; Presses the aim key
    ExactSleep(100)
    Send("{rbutton up}") ; Releases the aim key
}

AmmoBuy(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{2 down}")
    ExactSleep(50)
    Send("{2 up}")
    ExactSleep(50)
    Send("{m down}")
    ExactSleep(50)
    Send("{m up}")
    ExactSleep(100)
    loop (4) {
        Send("{down down}")
        ExactSleep(50)
        Send("{down up}")
        ExactSleep(50)
    }
    loop (2) {
        Send("{enter down}")
        ExactSleep(50)
        Send("{enter up}")
        ExactSleep(50)
    }
    ExactSleep(200)
    Send("{left down}")
    ExactSleep(50)
    Send("{left up}")
    ExactSleep(50)
    Send("{down down}")
    ExactSleep(50)
    Send("{down up}")
    ExactSleep(50)
    Send("{enter down}")
    ExactSleep(50)
    Send("{enter up}")
    ExactSleep(50)
    Send("{m down}")
    ExactSleep(50)
    Send("{m up}")
}

PersonalVehicleCall(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{m down}")
    ExactSleep(50)
    Send("{m up}")
    ExactSleep(100)
    loop (2) {
        Send("{down down}")
        ExactSleep(50)
        Send("{down up}")
        ExactSleep(50)
    }
    loop (2) {
        Send("{enter down}")
        ExactSleep(50)
        Send("{enter up}")
        ExactSleep(50)
    }
    Send("{m down}")
    ExactSleep(50)
    Send("{m up}")
}

BSTBuy(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{m down}")
    ExactSleep(50)
    Send("{m up}")
    ExactSleep(100)
    Send("{enter down}")
    ExactSleep(50)
    Send("{enter up}")
    ExactSleep(50)
    loop (4) {
        Send("{down down}")
        ExactSleep(50)
        Send("{down up}")
        ExactSleep(50)
    }
    Send("{enter down}")
    ExactSleep(50)
    Send("{enter up}")
    ExactSleep(50)
    Send("{down down}")
    ExactSleep(50)
    Send("{down up}")
    ExactSleep(50)
    Send("{enter down}")
    ExactSleep(50)
    Send("{enter up}")
    ExactSleep(50)
}

ArmorBuy(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{m down}")
    ExactSleep(50)
    Send("{m up}")
    ExactSleep(100)
    Send("{enter down}")
    ExactSleep(50)
    Send("{enter up}")
    ExactSleep(50)
    loop (4) {
        Send("{down down}")
        ExactSleep(50)
        Send("{down up}")
        ExactSleep(50)
    }
    Send("{enter down}")
    ExactSleep(50)
    Send("{enter up}")
    ExactSleep(50)
    loop (3) {
        Send("{down down}")
        ExactSleep(50)
        Send("{down up}")
        ExactSleep(50)
    }
    Send("{enter down}")
    ExactSleep(50)
    Send("{enter up}")
    ExactSleep(50)
}