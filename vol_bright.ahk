#Requires AutoHotkey v2.0

; Prevents the "71 hotkeys have been received" warning dialog
A_MaxHotkeysPerInterval := 200

muteCount := 0
brightnessMode := false

~Volume_Mute:: {
    global muteCount, brightnessMode
    
    muteCount++
    
    ; Reset counter if inactive for 3 seconds
    SetTimer(ResetMuteCount, -3000)
    
    ; Logic: Require 4 mutes to enter brightness mode, 2 mutes to exit
    targetCount := brightnessMode ? 2 : 4
    
    if (muteCount >= targetCount) {
        brightnessMode := !brightnessMode
        muteCount := 0
        
        ; Play high beep for Brightness mode, low beep for Normal mode
        SoundBeep(brightnessMode ? 750 : 400, 150)
    }
}

ResetMuteCount() {
    global muteCount
    muteCount := 0
}

#HotIf brightnessMode
Volume_Up::F6
Volume_Down::F5
#HotIf