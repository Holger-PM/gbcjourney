db DEX_ALAKAZAM ; Pokedex ID

; --- Base Stats ---
    db 55            ; HP
    db 50            ; Attack
    db 45            ; Defense
    db 120           ; Speed
    db 135           ; Special

; --- Types & Training ---
    db PSYCHIC_TYPE  ; Type 1
    db PSYCHIC_TYPE  ; Type 2
    db 50            ; Catch rate
    db 186           ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/alakazam.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/alakazam.pic", 0, 1   ; Sprite dimensions
ENDC
    dw AlakazamPicFront, AlakazamPicBack

; --- Moves & Growth ---
    db TELEPORT, KINESIS, NO_MOVE, NO_MOVE          ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                           ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    SUBMISSION,   \
    COUNTER,      \
    SEISMIC_TOSS, \
    RAGE,         \
    DIG,          \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    METRONOME,    \
    SKULL_BASH,   \
    REST,         \
    THUNDER_WAVE, \
    PSYWAVE,      \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    FLASH
; end

    db BANK(AlakazamPicFront)
