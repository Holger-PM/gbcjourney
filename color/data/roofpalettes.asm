RoofPalettes:
	dw PalletRoof
	dw ViridianRoof
	dw PewterRoof
	dw CeruleanRoof
	dw LavenderRoof
	dw VermilionRoof
	dw CeladonRoof
	dw FuchsiaRoof
	dw CinnabarRoof
	dw IndigoRoof
	dw SaffronRoof
	dw PalletRoof    ; unused map $0B
	dw PalletRoof    ; ROUTE_1
	dw PewterRoof    ; ROUTE_2
	dw PewterRoof    ; ROUTE_3
	dw PewterRoof    ; ROUTE_4
	dw SaffronRoof   ; ROUTE_5
	dw VermilionRoof ; ROUTE_6 (hardcoded to use SaffronRoof for top 2 rows)
	dw SaffronRoof   ; ROUTE_7
	dw SaffronRoof   ; ROUTE_8
	dw LavenderRoof  ; ROUTE_9
	dw LavenderRoof  ; ROUTE_10
	dw VermilionRoof ; ROUTE_11
	dw VermilionRoof ; ROUTE_12
	dw FuchsiaRoof   ; ROUTE_13
	dw FuchsiaRoof   ; ROUTE_14
	dw FuchsiaRoof   ; ROUTE_15
	dw CeladonRoof   ; ROUTE_16
	dw CeladonRoof   ; ROUTE_17
	dw CeladonRoof   ; ROUTE_18
	dw FuchsiaRoof   ; ROUTE_19
	dw CinnabarRoof  ; ROUTE_20
	dw CinnabarRoof  ; ROUTE_21
	dw PewterRoof    ; ROUTE_22
	dw IndigoRoof    ; ROUTE_23
	dw CeruleanRoof  ; ROUTE_24
	dw CeruleanRoof  ; ROUTE_25

PalletRoof: ; Journey
	RGB 31,14,14
	RGB 22,06,06

ViridianRoof: ; Journey
	RGB 10,28,16
	RGB 04,18,08

PewterRoof: ; Journey
	RGB 18,22,26
	RGB 10,12,18

CeruleanRoof: ; Journey
	RGB 10,24,31
	RGB 04,14,22

LavenderRoof: ; Journey
	RGB 24,16,30
	RGB 14,08,20

VermilionRoof: ; Journey
	RGB 31,24,08
	RGB 22,14,02

CeladonRoof: ; Journey
	RGB 12,26,22
	RGB 04,16,12

FuchsiaRoof: ; Journey
	RGB 31,16,26
	RGB 20,08,14

CinnabarRoof: ; Journey
	RGB 31,06,06
	RGB 18,02,02

IndigoRoof: ; Journey
	RGB 16,12,30
	RGB 08,04,18

SaffronRoof: ; Journey
	RGB 31,28,10
	RGB 24,18,04
