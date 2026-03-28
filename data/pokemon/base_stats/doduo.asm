	db DEX_DODUO      ; Pokedex ID

; --- Base Stats ---
    db  35            ; HP
    db  85            ; Attack
    db  45            ; Defense
    db  75            ; Speed
    db  35            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db FLYING         ; Type 2
    db 190            ; Catch rate
    db  96            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/doduo.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/doduo.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DoduoPicFront, DoduoPicBack

; --- Moves & Growth ---
    db PECK, NO_MOVE, NO_MOVE, NO_MOVE             ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SKULL_BASH,   \
    REST,         \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    FLY
; end

    db BANK(DoduoPicFront)