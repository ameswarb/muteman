Muted := false

SoundPlay, music_marimba_chord.wav

; unmute, mouse4
]::
    if (Muted) {
        Muted := false
        Send, m
        SoundPlay, beep_short_on.wav
    }
return

; mute, mouse5
[::
    if (!Muted) {
        Muted := true
        Send, m
        SoundPlay, beep_short_off.wav
    }
return

; invert
\::
    Muted := !Muted
    SoundPlay, chime_bell_ding.wav
return
