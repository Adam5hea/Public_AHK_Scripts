#Include Script_Base.ahk
FoundX := 0
FoundY := 0
o::
{
if (ImageSearch(&FoundX, &FoundY, 60, 140, 75, 154, "*TransBlue *10 C:\Users\Nesami\Documents\AutoHotkey\Images\Logo.png")) {
    MsgBox ("Found")
}
}