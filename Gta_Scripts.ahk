#Include Script_Base.ahk
WindowName := "Grand Theft Auto V"

Hotkey("~$xbutton2", HeavyReloadCancel) ; Side Front Mouse Button
Hotkey("~$xbutton1", SniperReloadCancel) ; Side Back Mouse Button
Hotkey("~$mbutton", AmmoBuy) ; Middle Mouse buys ammo
Hotkey("~$+mbutton", PersonalVehicleCall) ; Shift + Mouse Wheel
Hotkey("~$^XButton1", BSTBuy) ; Ctrl + CapsLock
Hotkey("~$+capslock", ArmorBuy) ; Shitf + CapsLock
Hotkey("~$^tab", VehicleHelmetEquip) ; Ctrl + Tab
Hotkey("~$^del", AFK) ; Ctrl + Del
; Hotkey("NULL", PassiveHealthRegen)

; Interaction Configuration Section
KeyBindInteractionMenu := "m"
KeyBindEnter := "enter"
KeybindLeftArrow := "left"
KeyBindDownArrow := "down"
KeyBindBackspace := "Backspace"
KeyBindUpArrow := "up"
KeyBindF := "f"
KeybindRightArrow := "right"

; Weapon Menu Configuration Section
KeyBindWeaponWheel := "tab"
KeyBindAimButton := "rbutton"
KeyBindSpecialWeapon := "r"
KeyBindHeavyWeapon := "3"
KeyBindSniper := "1"
KeyBindPistol := "2"

; Movement Configuration
KeyBindMoveLeft := "a"
KeyBindMoveRight := "d"

HeavyReloadCancel(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeyBindSpecialWeapon . " down}")
    ExactSleep(50)
    Send("{" . KeyBindSpecialWeapon . " up}")
    ExactSleep(50)
    Send("{" . KeyBindHeavyWeapon . " down}")
    ExactSleep(50)
    Send("{" . KeyBindHeavyWeapon . " up}")
    ExactSleep(50)
    Send("{" . KeyBindWeaponWheel . " down}")
    ExactSleep(50)
    Send("{" . KeyBindWeaponWheel . " up}")

}

SniperReloadCancel(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeyBindSpecialWeapon . " down}")
    ExactSleep(50)
    Send("{" . KeyBindSpecialWeapon . " up}")
    ExactSleep(50)
    Send("{" . KeyBindSniper . " down}")
    ExactSleep(50)
    Send("{" . KeyBindSniper . " up}")
    ExactSleep(50)
    Send("{" . KeyBindWeaponWheel . " down}")
    ExactSleep(50)
    Send("{" . KeyBindWeaponWheel . " up}")
    ExactSleep(50)
    Send("{" . KeyBindAimButton . " down}")
    ExactSleep(100)
    Send("{" . KeyBindAimButton . " up}")
}

AmmoBuy(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeyBindPistol . " down}")
    ExactSleep(50)
    Send("{" . KeyBindPistol . " up}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
    ExactSleep(100)
    loop (4) {
        Send("{" . KeyBindDownArrow . " down}")
        ExactSleep(50)
        Send("{" . KeyBindDownArrow . " up}")
        ExactSleep(50)
    }
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}")
        ExactSleep(50)
    }
    ExactSleep(200)
    Send("{" . KeybindLeftArrow . " down}")
    ExactSleep(50)
    Send("{" . KeybindLeftArrow . " up}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " down}")
    ExactSleep(50)
    Send("{" . KeyBindDownArrow . " up}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
}

PersonalVehicleCall(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
    ExactSleep(100)
    loop (2) {
        Send("{" . KeyBindDownArrow . " down}")
        ExactSleep(50)
        Send("{" . KeyBindDownArrow . " up}")
        ExactSleep(50)
    }
    loop (2) {
        Send("{" . KeyBindEnter . " down}")
        ExactSleep(50)
        Send("{" . KeyBindEnter . " up}")
        ExactSleep(50)
    }
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
}

BSTBuy(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
    ExactSleep(100)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    loop (4) {
        Send("{" . KeyBindDownArrow . " down}")
        ExactSleep(50)
        Send("{" . KeyBindDownArrow . " up}")
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
}

ArmorBuy(Hotkey) {
    if (!Active()) {
        return
    }
    Send("{" . KeyBindInteractionMenu . " down}")
    ExactSleep(50)
    Send("{" . KeyBindInteractionMenu . " up}")
    ExactSleep(100)
    Send("{" . KeyBindEnter . " down}")
    ExactSleep(50)
    Send("{" . KeyBindEnter . " up}")
    ExactSleep(50)
    loop (4) {
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
}

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

Toggle := false
AFK(Hotkey) {
    global Toggle ; Access the global Toggle variable
    Toggle := !Toggle ; Toggle the loop on/off

    if (Toggle) {
        ; Start the loop
        while (Toggle) { ; Loop as long as Toggle is true
            if (!Active()) {
                return
            }
            Send("{" . KeyBindMoveLeft . " down}")
            ExactSleep(500)
            Send("{" . KeyBindMoveLeft . " up}")
            ExactSleep(500)
            Send("{" . KeyBindMoveRight . " down}")
            ExactSleep(500)
            Send("{" . KeyBindMoveRight . " up}")
            ExactSleep(500)
        }
    } else {
        ; Toggle is false, so the loop will exit naturally
    }
}