	db DEX_EEVEE      ; Pokedex ID

; --- Base Stats ---
    db  70            ; HP
    db  65            ; Attack
    db  65            ; Defense
    db  55            ; Speed
    db  70            ; Special

; --- Types & Training ---
    db NORMAL         ; Type 1
    db NORMAL         ; Type 2
    db 125 ; 45       ; Catch rate 
    db  92            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/eevee.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/eevee.pic", 0, 1   ; Sprite dimensions
ENDC
    dw EeveePicFront, EeveePicBack

; --- Moves & Growth ---
    db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    RAGE,         \
    DIG,          \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE
; end

    db BANK(EeveePicFront)
