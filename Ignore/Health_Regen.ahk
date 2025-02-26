#Include Script_Base.ahk

FoundX := 0
FoundY := 0
o::
{
    if (ImageSearch(&FoundX, &FoundY, 185, 983, 186, 990, "*10 C:\Users\Nesami\Documents\Public_AHK_Scripts\Images\DepletedHealth.png")) {
        MsgBox("Found") ; Image found
    } else {
        MsgBox("Not Found") ; Image not found
    }
}