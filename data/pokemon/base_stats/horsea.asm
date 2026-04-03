	db DEX_HORSEA     ; Pokedex ID

; --- Base Stats ---
    db  30            ; HP
    db  40            ; Attack
    db  70            ; Defense
    db  60            ; Speed
    db  70            ; Special

; --- Types & Training ---
    db WATER          ; Type 1
    db WATER          ; Type 2
    db 225            ; Catch rate
    db  83            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/horsea.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/horsea.pic", 0, 1   ; Sprite dimensions
ENDC
    dw HorseaPicFront, HorseaPicBack

; --- Moves & Growth ---
    db BUBBLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    SURF
; end

    db BANK(HorseaPicFront)