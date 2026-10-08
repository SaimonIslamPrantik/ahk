#Requires AutoHotkey v2.0
#SingleInstance Force

; Disable default Caps Lock toggle when pressed alone
SetCapsLockState "AlwaysOff"

; Map default shortcuts (Key -> Emoji)
global Mappings := Map(
    "w", "🥀",
    "t", "😋",
    "p", "🎀",
    "s", "🙏",
    "d", "💀",
    "l", "🥰",
    "c", "😭",
    "b", "💔",
    "m", "🗿",
    "h", "❤️"
)

; --- Hotkey Definition ---
; Intercept Caps Lock + any key dynamically
#HotIf GetKeyState("CapsLock", "P")
*a::
*b::
*c::
*d::
*e::
*f::
*g::
*h::
*i::
*j::
*k::
*l::
*m::
*n::
*o::
*p::
*q::
*r::
*s::
*t::
*u::
*v::
*w::
*x::
*y::
*z:: HandleCapsLockCombination(ThisHotkey)
#HotIf

HandleCapsLockCombination(hotkeyName) {
    cleanKey := StrLower(SubStr(hotkeyName, 2)) ; Extract letter (e.g. "*s" -> "s")
    if Mappings.Has(cleanKey) {
        Send("{Text}" . Mappings[cleanKey])
    }
}

; Shortcut: Press Shift + CapsLock to toggle standard CapsLock state back/forth
+CapsLock:: {
    if GetKeyState("CapsLock", "T")
        SetCapsLockState "AlwaysOff"
    else
        SetCapsLockState "AlwaysOn"
}