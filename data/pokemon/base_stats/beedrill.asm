	db DEX_BEEDRILL   ; Pokedex ID

; --- Base Stats ---
    db 65             ; HP
    db 80             ; Attack
    db 40             ; Defense
    db 75             ; Speed
    db 45             ; Special

; --- Types & Training ---
    db BUG            ; Type 1
    db POISON         ; Type 2
    db 45             ; Catch rate
    db 159            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/beedrill.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1   ; Sprite dimensions
ENDC
    dw BeedrillPicFront, BeedrillPicBack

; --- Moves & Growth ---
    db STRING_SHOT, HARDEN, POISON_STING, NO_MOVE   ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                           ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    SWORDS_DANCE, \
    TOXIC,        \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    HYPER_BEAM,   \
    RAGE,         \
    MEGA_DRAIN,   \
    MIMIC,        \
    DOUBLE_TEAM,  \
    REFLECT,      \
    SWIFT,        \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    CUT
; end

    db BANK(BeedrillPicFront)
