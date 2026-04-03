	db DEX_BUTTERFREE ; Pokedex ID

; --- Base Stats ---
    db 60             ; HP
    db 45             ; Attack
    db 50             ; Defense
    db 70             ; Speed
    db 90             ; Special

; --- Types & Training ---
    db BUG            ; Type 1
    db FLYING         ; Type 2
    db 45             ; Catch rate
    db 160            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/butterfree.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1   ; Sprite dimensions
ENDC
    dw ButterfreePicFront, ButterfreePicBack

; --- Moves & Growth ---
    db TACKLE, HARDEN, STRING_SHOT, NO_MOVE           ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                             ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    RAZOR_WIND,   \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    MEGA_DRAIN,   \
    SOLARBEAM,    \
    PSYCHIC_M,    \
    TELEPORT,     \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    SWIFT,        \
    REST,         \
    PSYWAVE,      \
    SUBSTITUTE,   \
    FLASH
; end

    db BANK(ButterfreePicFront)