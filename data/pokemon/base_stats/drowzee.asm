	db DEX_DROWZEE    ; Pokedex ID

; --- Base Stats ---
    db  60            ; HP
    db  48            ; Attack
    db  45            ; Defense
    db  42            ; Speed
    db  90            ; Special

; --- Types & Training ---
    db PSYCHIC_TYPE   ; Type 1
    db PSYCHIC_TYPE   ; Type 2
    db 190            ; Catch rate
    db 102            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/drowzee.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/drowzee.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DrowzeePicFront, DrowzeePicBack

; --- Moves & Growth ---
    db POUND, HYPNOSIS, NO_MOVE, NO_MOVE           ; Level 1 learnset
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
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    METRONOME,    \
    SKULL_BASH,   \
    DREAM_EATER,  \
    REST,         \
    THUNDER_WAVE, \
    PSYWAVE,      \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    FLASH
; end

    db BANK(DrowzeePicFront)
