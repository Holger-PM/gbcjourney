	db DEX_ELECTRODE  ; Pokedex ID

; --- Base Stats ---
    db  60            ; HP
    db  50            ; Attack
    db  70            ; Defense
    db 140            ; Speed
    db  80            ; Special

; --- Types & Training ---
    db ELECTRIC       ; Type 1
    db ELECTRIC       ; Type 2
    db  60            ; Catch rate
    db 150            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/electrode.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/electrode.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ElectrodePicFront, ElectrodePicBack

; --- Moves & Growth ---
    db TACKLE, SCREECH, NO_MOVE, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    TAKE_DOWN,    \
    HYPER_BEAM,   \
    RAGE,         \
    THUNDERBOLT,  \
    THUNDER,      \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    BIDE,         \
    SELFDESTRUCT, \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    THUNDER_WAVE, \
    EXPLOSION,    \
    SUBSTITUTE,   \
    FLASH
; end

    db BANK(ElectrodePicFront)
