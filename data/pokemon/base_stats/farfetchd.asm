	db DEX_FARFETCHD  ; Pokedex ID

; --- Base Stats ---
    db  52            ; HP
    db  90            ; Attack
    db  55            ; Defense
    db  60            ; Speed
    db  58            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db FLYING         ; Type 2
    db  45            ; Catch rate
    db  94            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/farfetchd.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/farfetchd.pic", 0, 1   ; Sprite dimensions
ENDC
    dw FarfetchdPicFront, FarfetchdPicBack

; --- Moves & Growth ---
    db PECK, SAND_ATTACK, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    SWORDS_DANCE, \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    CUT,          \
    FLY
; end

    db BANK(FarfetchdPicFront)