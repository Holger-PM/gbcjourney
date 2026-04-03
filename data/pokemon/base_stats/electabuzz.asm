	db DEX_ELECTABUZZ ; Pokedex ID

; --- Base Stats ---
    db  65            ; HP
    db  83            ; Attack
    db  57            ; Defense
    db 105            ; Speed
    db  85            ; Special

; --- Types & Training ---
    db ELECTRIC       ; Type 1
    db ELECTRIC       ; Type 2
    db  45            ; Catch rate
    db 156            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/electabuzz.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ElectabuzzPicFront, ElectabuzzPicBack

; --- Moves & Growth ---
    db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE        ; Level 1 learnset
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
    THUNDERBOLT,  \
    THUNDER,      \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    METRONOME,    \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    THUNDER_WAVE, \
    PSYWAVE,      \
    SUBSTITUTE,   \
    STRENGTH,     \
    FLASH
; end

    db BANK(ElectabuzzPicFront)
