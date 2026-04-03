	db DEX_ARTICUNO   ; Pokedex ID

; --- Base Stats ---
    db 90             ; HP
    db 85             ; Attack
    db 100            ; Defense
    db 85             ; Speed
    db 125            ; Special

; --- Types & Training ---
    db ICE            ; Type 1
    db FLYING         ; Type 2
    db 3              ; Catch rate
    db 215            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/articuno.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/articuno.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ArticunoPicFront, ArticunoPicBack

; --- Moves & Growth ---
    db PECK, NO_MOVE, NO_MOVE, NO_MOVE              ; Level 1 learnset
    db GROWTH_SLOW                                  ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    HYPER_BEAM,   \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    SWIFT,        \
    SKY_ATTACK,   \
    REST,         \
    SUBSTITUTE,   \
    FLY
; end

    db BANK(ArticunoPicFront)
