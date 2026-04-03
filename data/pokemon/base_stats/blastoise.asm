	db DEX_BLASTOISE  ; Pokedex ID

; --- Base Stats ---
    db 79             ; HP
    db 83             ; Attack
    db 100            ; Defense
    db 78             ; Speed
    db 85             ; Special

; --- Types & Training ---
    db WATER          ; Type 1
    db WATER          ; Type 2
    db 45             ; Catch rate
    db 210            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/blastoise.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1   ; Sprite dimensions
ENDC
    dw BlastoisePicFront, BlastoisePicBack

; --- Moves & Growth ---
    db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_SLOW                            ; Growth rate

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
    EARTHQUAKE,   \
    FISSURE,      \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    SURF,         \
    STRENGTH
; end

    db BANK(BlastoisePicFront)