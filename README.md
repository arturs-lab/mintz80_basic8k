# mintz80_basic8k
8K Basic for MintZ80<br>
Originally copied from https://deramp.com/downloads/imsai/software/8K%20BASIC/<br>

# notes for current version that works
```
works but only at ORG 0
To run this basic, first command has to	be NEW.	This resets default values within Basic
Also, all CAPS letters have to be used.
Additional information was found in a readme file of "Z80 Emulator" by Wiley J.	Moore
An "Imsai.txt" file contains following note:
"""
Also, there are two typographical errors in the Source file,
        probably made when the Basic source code was transcribed
        from the original paper manual.

   Following the Label RECI1 you must add "INX  D"
                    between the "STAX  D" and the "CALL  CKSUM"

 RECI1: CALL    CASI    ;INPUT BYTE
        STAX    D       ;STORE IT
        INX     D       ;Add this line
        CALL    CKSUM   ;UPDATE CKSUM, PUT ADDR IN LIGHTS

   Following Label NOTCO, you must change "JNZ NOTCH" to "JNZ NOTBS"

 NOTCO:  CPI     7FH     ;TEST IF RUBOUT
         JNZ     NOTBS   ;BRIF NOT      (change this line)
         LDA     TAPES   ;GET PAPER TAPE SW

The ABOVE changes make the file match the manual. 
"""
With these two changes applied,	code assembled to run from ORG 0 works.
Code assembled with ORG	$3000 fails.
```
