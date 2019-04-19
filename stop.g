; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
;
; generated by RepRapFirmware Configuration Tool v2 on Mon Apr 08 2019 13:38:58 GMT+0200 (heure d’été d’Europe centrale)

M104 S0   ; extruder off
M140 S0   ; heated bed heater off

G91       ; relative positioning
G1 E-1 F300 ; retract the filament a bit before lifting
G1 Z+0.5 E-5 X-20 Y-20 F6000 ; move Z up a bit and retract filament even more
G28 X     ; home X, head out ofthe way
G1 Y190 F9000 ; move heatbed to front

M84       ; steppers off
G90       ; relative positioning
