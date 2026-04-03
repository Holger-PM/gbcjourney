	db DEX_HYPNO      ; Pokedex ID

; --- Base Stats ---
    db  85            ; HP
    db  73            ; Attack
    db  70            ; Defense
    db  67            ; Speed
    db 115            ; Special

; --- Types & Training ---
    db PSYCHIC_TYPE   ; Type 1
    db PSYCHIC_TYPE   ; Type 2
    db  75            ; Catch rate
    db 165            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/hypno.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/hypno.pic", 0, 1   ; Sprite dimensions
ENDC
    dw HypnoPicFront, HypnoPicBack

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
    HYPER_BEAM,   \
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

    db BANK(HypnoPicFront)
