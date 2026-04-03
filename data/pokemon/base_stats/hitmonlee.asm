	db DEX_HITMONLEE  ; Pokedex ID

; --- Base Stats ---
    db  65            ; HP
    db 120            ; Attack
    db  70            ; Defense
    db  93            ; Speed
    db  60            ; Special

; --- Types & Training ---
    db FIGHTING       ; Type 1
    db FIGHTING       ; Type 2
    db  45            ; Catch rate
    db 139            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/hitmonlee.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/hitmonlee.pic", 0, 1   ; Sprite dimensions
ENDC
    dw HitmonleePicFront, HitmonleePicBack

; --- Moves & Growth ---
    db DOUBLE_KICK, MEDITATE, NO_MOVE, NO_MOVE     ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    METRONOME,    \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    STRENGTH,     \
    ROCK_SLIDE
; end

    db BANK(HitmonleePicFront)
