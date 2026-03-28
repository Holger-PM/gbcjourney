	db DEX_CHANSEY    ; Pokedex ID

; --- Base Stats ---
    db 250            ; HP
    db 5              ; Attack
    db 5              ; Defense
    db 50             ; Speed
    db 105            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db NORMAL         ; Type 2
    db 30             ; Catch rate
    db 255            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/chansey.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/chansey.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ChanseyPicFront, ChanseyPicBack

; --- Moves & Growth ---
    db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE          ; Level 1 learnset
    db GROWTH_FAST                                 ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    MEGA_PUNCH,   \
    MEGA_KICK,    \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    REST,         \
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
    SOLARBEAM,    \
    THUNDERBOLT,  \
    THUNDER,      \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    REFLECT,      \
    BIDE,         \
    METRONOME,    \
    EGG_BOMB,     \
    FIRE_BLAST,   \
    SKULL_BASH,   \
    SOFTBOILED,   \
    THUNDER_WAVE, \
    PSYWAVE,      \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    STRENGTH,     \
    FLASH,        \
    DOUBLE_TEAM
; end

    db BANK(ChanseyPicFront)