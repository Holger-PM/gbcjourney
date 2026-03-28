	db DEX_JYNX       ; Pokedex ID

; --- Base Stats ---
    db  65            ; HP
    db  50            ; Attack
    db  35            ; Defense
    db  95            ; Speed
    db  95            ; Special

; --- Types & Training ---
    db ICE            ; Type 1
    db PSYCHIC_TYPE   ; Type 2
    db  45            ; Catch rate
    db 137            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/jynx.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/jynx.pic", 0, 1   ; Sprite dimensions
ENDC
    dw JynxPicFront, JynxPicBack

; --- Moves & Growth ---
    db POUND, LOVELY_KISS, NO_MOVE, NO_MOVE        ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
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
    BIDE,         \
    METRONOME,    \
    SKULL_BASH,   \
    REST,         \
    PSYWAVE,      \
    SUBSTITUTE
; end

    db BANK(JynxPicFront)
