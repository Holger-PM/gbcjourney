	db DEX_GOLBAT     ; Pokedex ID

; --- Base Stats ---
    db  75            ; HP
    db  80            ; Attack
    db  70            ; Defense
    db  90            ; Speed
    db  75            ; Special

; --- Types & Training ---
    db POISON         ; Type 1
    db FLYING         ; Type 2
    db  90            ; Catch rate
    db 171            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/golbat.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/golbat.pic", 0, 1   ; Sprite dimensions
ENDC
    dw GolbatPicFront, GolbatPicBack

; --- Moves & Growth ---
    db LEECH_LIFE, SCREECH, NO_MOVE, NO_MOVE       ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    MEGA_DRAIN,   \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    SWIFT,        \
    REST,         \
    SUBSTITUTE,   \
    FLY
; end

    db BANK(GolbatPicFront)
