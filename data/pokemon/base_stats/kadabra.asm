	db DEX_KADABRA    ; Pokedex ID

; --- Base Stats ---
    db  40            ; HP
    db  35            ; Attack
    db  30            ; Defense
    db 105            ; Speed
    db 120            ; Special

; --- Types & Training ---
    db PSYCHIC_TYPE   ; Type 1
    db PSYCHIC_TYPE   ; Type 2
    db 100            ; Catch rate
    db 145            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/kadabra.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/kadabra.pic", 0, 1   ; Sprite dimensions
ENDC
    dw KadabraPicFront, KadabraPicBack

; --- Moves & Growth ---
    db TELEPORT, KINESIS, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                          ; Growth rate

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
    DIG,          \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    METRONOME,    \
    SKULL_BASH,   \
    REST,         \
    THUNDER_WAVE, \
    PSYWAVE,      \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    FLASH
; end

    db BANK(KadabraPicFront)
