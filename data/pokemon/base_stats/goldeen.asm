	db DEX_GOLDEEN    ; Pokedex ID

; --- Base Stats ---
    db  45            ; HP
    db  67            ; Attack
    db  60            ; Defense
    db  63            ; Speed
    db  50            ; Special

; --- Types & Training ---
    db WATER          ; Type 1
    db WATER          ; Type 2
    db 225            ; Catch rate
    db 111            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/goldeen.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/goldeen.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GoldeenPicFront, GoldeenPicBack

; --- Moves & Growth ---
    db TAIL_WHIP, BUBBLE, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    HORN_DRILL,   \
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
    SURF,         \
    SWORDS_DANCE
; end

    db BANK(GoldeenPicFront)