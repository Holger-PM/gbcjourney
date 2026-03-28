	db DEX_CLOYSTER   ; Pokedex ID

; --- Base Stats ---
    db 50             ; HP
    db 95             ; Attack
    db 180            ; Defense
    db 70             ; Speed
    db 85             ; Special

; --- Types & Training ---
    db WATER          ; Type 1
    db ICE            ; Type 2
    db 60             ; Catch rate
    db 203            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/cloyster.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/cloyster.pic", 0, 1   ; Sprite dimensions
ENDC
    dw CloysterPicFront, CloysterPicBack

; --- Moves & Growth ---
    db TACKLE, WITHDRAW, CLAMP, AURORA_BEAM         ; Level 1 learnset
    db GROWTH_SLOW                                  ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    HYPER_BEAM,   \
    RAGE,         \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SELFDESTRUCT, \
    SWIFT,        \
    REST,         \
    EXPLOSION,    \
    TRI_ATTACK,   \
    SUBSTITUTE,   \
    SURF
; end

    db BANK(CloysterPicFront)