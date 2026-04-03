	db DEX_KABUTOPS   ; Pokedex ID

; --- Base Stats ---
    db  60            ; HP
    db 115            ; Attack
    db 105            ; Defense
    db  80            ; Speed
    db  70            ; Special

; --- Types & Training ---
    db ROCK           ; Type 1
    db WATER          ; Type 2
    db  45            ; Catch rate
    db 201            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/kabutops.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/kabutops.pic", 0, 1   ; Sprite dimensions
ENDC
    dw KabutopsPicFront, KabutopsPicBack

; --- Moves & Growth ---
    db SCRATCH, HARDEN, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    SWORDS_DANCE, \
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
    SEISMIC_TOSS, \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    ROCK_SLIDE,   \
    CUT,          \
    SURF
; end

    db BANK(KabutopsPicFront)
