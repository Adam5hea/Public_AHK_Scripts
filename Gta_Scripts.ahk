#MaxThreads 255 ; Enables the running of many instances of hotkeys at the same time
#MaxThreadsPerHotkey 3 ; Increases the maximum amount of simultanous threads for each hotkey to the minimal amount for toggle loops to work
#Requires AutoHotkey v2.0 ; Tells the compiler this script will run only on ahk v2.0
#SingleInstance force ; No prompt to reload script
A_HotkeyInterval := 0 ; Disables warning for too many keys pressed too quickly
KeyHistory 0 ; Disables key history entirely
ListLines false ; Disables logging of executed lines
ProcessSetPriority "H" ; Increases the process priority to high
SendMode "Event" ; Sets send mode to event allowing taps to be recognized
SetControlDelay -1 ; Causes the smallest possible delay after each control-modifying function
SetDefaultMouseSpeed 0 ; Causes the mouse cursor to be moved instantly
SetWinDelay -1 ; Causes the smallest possible delay after each windowing function
SetKeyDelay 0, 0 ; Causes the smallest possible delay and the smallest possible press length for each sending of a key
SetMouseDelay 0 ; Causes the smallest possible delay after each mouse movement or click

ExactSleep(Time) {
    Time := Time * 10000
    Last := 0
    DllCall("GetSystemTimeAsFileTime", "Int64*", &Last)
    Current := Last
    While (Current - Last < Time) {
        DllCall("GetSystemTimeAsFileTime", "Int64*", &Current)
    }
}


Active() {
    return WinActive("Grand Theft Auto V")
}


~$^LButton:: ; Key that triggers the heavy weapon reload cancel
{
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

~$^RButton:: ; Key that triggers the sniper rifle reload cancel
{
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

~$MButton::
{
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

~$+MButton::
{
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

~$^CapsLock::
{
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

~$+CapsLock::
{
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


; Add Passive Health Regeneration
; \\\\\\\\\\\\\\\\\\\\\\Remove if broken\\\\\\\\\\\\\\\\\\\\\Remove if broken\\\\\\\\\\\\\\\\\\\\\\\\\\\Remove if broken\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

