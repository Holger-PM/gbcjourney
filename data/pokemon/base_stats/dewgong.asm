	db DEX_DEWGONG    ; Pokedex ID

; --- Base Stats ---
    db 90             ; HP
    db 70             ; Attack
    db 80             ; Defense
    db 70             ; Speed
    db 95             ; Special

; --- Types & Training ---
    db WATER          ; Type 1
    db ICE            ; Type 2
    db 75             ; Catch rate
    db 176            ; Base exp yield

; --- Graphics ---
IF GEN_2_GRAPHICS
    INCBIN "gfx/pokemon/gsfront/dewgong.pic", 0, 1 ; Sprite dimensions
ELSE
    INCBIN "gfx/pokemon/front/dewgong.pic", 0, 1   ; Sprite dimensions
ENDC
    dw DewgongPicFront, DewgongPicBack

; --- Moves & Growth ---
    db HEADBUTT, NO_MOVE, NO_MOVE, NO_MOVE         ; Level 1 learnset
    db GROWTH_MEDIUM_FAST                          ; Growth rate

; --- TM/HM Learnset ---
    tmhm \
    TOXIC,        \
    HORN_DRILL,   \
    BODY_SLAM,    \
    TAKE_DOWN,    \
    DOUBLE_EDGE,  \
    BUBBLEBEAM,   \
    WATER_GUN,    \
    ICE_BEAM,     \
    BLIZZARD,     \
    HYPER_BEAM,   \
    PAY_DAY,      \
    RAGE,         \
    MIMIC,        \
    DOUBLE_TEAM,  \
    BIDE,         \
    SKULL_BASH,   \
    REST,         \
    SUBSTITUTE,   \
    SURF,         \
    STRENGTH
; end

    db BANK(DewgongPicFront)