#Include Script_Base.ahk
WindowName := "Grand Theft Auto V"

Hotkey("~$xbutton2", HeavyReloadCancel) ; Side Front Mouse Button
Hotkey("~$xbutton1", SniperReloadCancel) ; Side Back Mouse Button
Hotkey("~$mbutton", AmmoBuy) ; Middle Mouse buys ammo
Hotkey("~$+mbutton", PersonalVehicleCall) ; Shift + Mouse Wheel
Hotkey("~$^capslock", BSTBuy) ; Ctrl + CapsLock
Hotkey("~$+capslock", ArmorBuy) ; Shitf + CapsLock
; Hotkey("NULL", PassiveHealthRegen)
; Hotkey("NULL", VehicleHelmetEquip)

; Interaction Menu Configuration Section
KeyBindInteractionMenu := "m"
KeyBindEnter := "enter"
KeybindLeftArrow := "left"
KeyBindDownArrow := "down"

; Weapon Menu Configuration Section
KeyBindWeaponWheel := "tab"
KeyBindAimButton := "rbutton"
KeyBindSpecialWeapon := "r"
KeyBindHeavyWeapon := "3"
KeyBindSniper := "1"
KeyBindPistol := "2"

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