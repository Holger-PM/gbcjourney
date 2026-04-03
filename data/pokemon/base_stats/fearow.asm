	db DEX_FEAROW     ; Pokedex ID

; --- Base Stats ---
    db  65            ; HP
    db  90            ; Attack
    db  65            ; Defense
    db 100            ; Speed
    db  61            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db FLYING         ; Type 2
    db  90            ; Catch rate
    db 162            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/fearow.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/fearow.pic", 0, 1   ; Sprite dimensions
ENDC
    dw FearowPicFront, FearowPicBack

; --- Moves & Growth ---
    db PECK, GROWL, NO_MOVE, NO_MOVE               ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    SWIFT,        \
    SKY_ATTACK,   \
    REST,         \
    SUBSTITUTE,   \
    FLY
; end

    db BANK(FearowPicFront)