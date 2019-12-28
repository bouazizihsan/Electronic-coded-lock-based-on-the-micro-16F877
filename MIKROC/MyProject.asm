
_Tone1:

;MyProject.c,33 :: 		void Tone1() {
;MyProject.c,34 :: 		Sound_Play(659, 250);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,35 :: 		}
	RETURN
; end of _Tone1

_Tone2:

;MyProject.c,37 :: 		void Tone2() {
;MyProject.c,38 :: 		Sound_Play(698, 250);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,39 :: 		}
	RETURN
; end of _Tone2

_Tone3:

;MyProject.c,41 :: 		void Tone3() {
;MyProject.c,42 :: 		Sound_Play(784, 250);
	MOVLW      16
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,43 :: 		}
	RETURN
; end of _Tone3

_ToneA:

;MyProject.c,44 :: 		void ToneA() {
;MyProject.c,45 :: 		Sound_Play( 880, 50);
	MOVLW      112
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,46 :: 		}
	RETURN
; end of _ToneA

_ToneC:

;MyProject.c,47 :: 		void ToneC() {
;MyProject.c,48 :: 		Sound_Play(1046, 50);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,49 :: 		}
	RETURN
; end of _ToneC

_ToneE:

;MyProject.c,50 :: 		void ToneE() {
;MyProject.c,51 :: 		Sound_Play(1318, 50);
	MOVLW      38
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,52 :: 		}
	RETURN
; end of _ToneE

_Melody2:

;MyProject.c,54 :: 		void Melody2() {
;MyProject.c,56 :: 		for (i = 9; i > 0; i--) {
	MOVLW      9
	MOVWF      Melody2_i_L0+0
L_Melody20:
	MOVF       Melody2_i_L0+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_Melody21
;MyProject.c,57 :: 		ToneA(); ToneC(); ToneE();
	CALL       _ToneA+0
	CALL       _ToneC+0
	CALL       _ToneE+0
;MyProject.c,56 :: 		for (i = 9; i > 0; i--) {
	DECF       Melody2_i_L0+0, 1
;MyProject.c,58 :: 		}
	GOTO       L_Melody20
L_Melody21:
;MyProject.c,59 :: 		}
	RETURN
; end of _Melody2

_Melody:

;MyProject.c,63 :: 		void Melody() {
;MyProject.c,64 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
	CALL       _Tone3+0
;MyProject.c,65 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
	CALL       _Tone3+0
;MyProject.c,66 :: 		Tone1(); Tone2(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
;MyProject.c,67 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
	CALL       _Tone3+0
;MyProject.c,68 :: 		Tone1(); Tone2(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
;MyProject.c,69 :: 		Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
	CALL       _Tone3+0
	CALL       _Tone3+0
	CALL       _Tone2+0
	CALL       _Tone2+0
	CALL       _Tone1+0
;MyProject.c,70 :: 		}
	RETURN
; end of _Melody

_Melody_alarme_1:

;MyProject.c,85 :: 		void Melody_alarme_1(void)
;MyProject.c,87 :: 		Sound_Play(400, 100);
	MOVLW      144
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,88 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_13:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_13
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_13
	NOP
	NOP
;MyProject.c,89 :: 		Sound_Play(600, 50);
	MOVLW      88
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,90 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_14:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_14
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_14
	NOP
	NOP
;MyProject.c,91 :: 		Sound_Play(800, 100);
	MOVLW      32
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,92 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_15:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_15
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_15
	NOP
	NOP
;MyProject.c,93 :: 		Sound_Play(700, 50);
	MOVLW      188
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,94 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_16:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_16
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_16
	NOP
	NOP
;MyProject.c,95 :: 		Sound_Play(500, 50);
	MOVLW      244
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,96 :: 		}
	RETURN
; end of _Melody_alarme_1

_Melody_alarme_2:

;MyProject.c,98 :: 		void Melody_alarme_2(void)
;MyProject.c,100 :: 		Sound_Play(400, 100);
	MOVLW      144
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,101 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_27:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_27
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_27
	NOP
	NOP
;MyProject.c,102 :: 		Sound_Play(500, 70);
	MOVLW      244
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      70
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,103 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_28:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_28
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_28
	NOP
	NOP
;MyProject.c,104 :: 		Sound_Play(600, 80);
	MOVLW      88
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      80
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,105 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_29:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_29
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_29
	NOP
	NOP
;MyProject.c,106 :: 		Sound_Play(700, 48);
	MOVLW      188
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      48
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,107 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_210:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_210
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_210
	NOP
	NOP
;MyProject.c,108 :: 		Sound_Play(800, 102);
	MOVLW      32
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      102
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,109 :: 		Sound_Play(900, 150);
	MOVLW      132
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      150
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,110 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_211:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_211
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_211
	NOP
	NOP
;MyProject.c,111 :: 		Sound_Play(1000, 40);
	MOVLW      232
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      40
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,112 :: 		}
	RETURN
; end of _Melody_alarme_2

_Melody_alarme_3:

;MyProject.c,113 :: 		void Melody_alarme_3(void)
;MyProject.c,115 :: 		Sound_Play(1500, 100);
	MOVLW      220
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,116 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Melody_alarme_312:
	DECFSZ     R13+0, 1
	GOTO       L_Melody_alarme_312
	DECFSZ     R12+0, 1
	GOTO       L_Melody_alarme_312
	NOP
	NOP
;MyProject.c,117 :: 		Sound_Play(2000, 50);
	MOVLW      208
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      50
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MyProject.c,118 :: 		}
	RETURN
; end of _Melody_alarme_3

_GetKeyPressed:

;MyProject.c,120 :: 		unsigned short GetKeyPressed(void)
;MyProject.c,122 :: 		kp=0;
	CLRF       _kp+0
;MyProject.c,123 :: 		do
L_GetKeyPressed13:
;MyProject.c,124 :: 		kp = Keypad_Key_Click();
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;MyProject.c,125 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed13
;MyProject.c,127 :: 		switch (kp)
	GOTO       L_GetKeyPressed16
;MyProject.c,129 :: 		case  1: kp = 49; break; // 1
L_GetKeyPressed18:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,130 :: 		case  2: kp = 50; break; // 2
L_GetKeyPressed19:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,131 :: 		case  3: kp = 51; break; // 3
L_GetKeyPressed20:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,132 :: 		case  4: kp = 65; break; // A
L_GetKeyPressed21:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,133 :: 		case  5: kp = 52; break; // 4
L_GetKeyPressed22:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,134 :: 		case  6: kp = 53; break; // 5
L_GetKeyPressed23:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,135 :: 		case  7: kp = 54; break; // 6
L_GetKeyPressed24:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,136 :: 		case  8: kp = 66; break; // B
L_GetKeyPressed25:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,137 :: 		case  9: kp = 55; break; // 7
L_GetKeyPressed26:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,138 :: 		case 10: kp = 56; break; // 8
L_GetKeyPressed27:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,139 :: 		case 11: kp = 57; break; // 9
L_GetKeyPressed28:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,140 :: 		case 12: kp = 67; break; // C
L_GetKeyPressed29:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,141 :: 		case 13: kp = 42; break; // *
L_GetKeyPressed30:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,142 :: 		case 14: kp = 48; break; // 0
L_GetKeyPressed31:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,143 :: 		case 15: kp = 35; break; // #
L_GetKeyPressed32:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,144 :: 		case 16: kp = 68; break; // D
L_GetKeyPressed33:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_GetKeyPressed17
;MyProject.c,145 :: 		}
L_GetKeyPressed16:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed18
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed19
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed20
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed21
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed22
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed23
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed24
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed25
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed26
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed27
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed28
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed29
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed30
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed31
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed32
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_GetKeyPressed33
L_GetKeyPressed17:
;MyProject.c,146 :: 		return kp ;
	MOVF       _kp+0, 0
	MOVWF      R0+0
;MyProject.c,147 :: 		}
	RETURN
; end of _GetKeyPressed

_Sens_1_motor:

;MyProject.c,149 :: 		void Sens_1_motor(void)
;MyProject.c,151 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;MyProject.c,152 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;MyProject.c,153 :: 		delay_ms(Temps_ms_sens1);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_Sens_1_motor34:
	DECFSZ     R13+0, 1
	GOTO       L_Sens_1_motor34
	DECFSZ     R12+0, 1
	GOTO       L_Sens_1_motor34
	DECFSZ     R11+0, 1
	GOTO       L_Sens_1_motor34
	NOP
	NOP
;MyProject.c,154 :: 		}
	RETURN
; end of _Sens_1_motor

_Sens_2_motor:

;MyProject.c,156 :: 		void Sens_2_motor(void)
;MyProject.c,158 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;MyProject.c,159 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;MyProject.c,160 :: 		delay_ms(Temps_ms_sens2);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_Sens_2_motor35:
	DECFSZ     R13+0, 1
	GOTO       L_Sens_2_motor35
	DECFSZ     R12+0, 1
	GOTO       L_Sens_2_motor35
	DECFSZ     R11+0, 1
	GOTO       L_Sens_2_motor35
	NOP
	NOP
;MyProject.c,161 :: 		}
	RETURN
; end of _Sens_2_motor

_Frein_motor:

;MyProject.c,163 :: 		void Frein_motor(void)
;MyProject.c,165 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;MyProject.c,166 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;MyProject.c,169 :: 		}
	RETURN
; end of _Frein_motor

_main:

;MyProject.c,176 :: 		void main()
;MyProject.c,178 :: 		TRISB = 0x01;
	MOVLW      1
	MOVWF      TRISB+0
;MyProject.c,179 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;MyProject.c,180 :: 		PORTC=0x00;
	CLRF       PORTC+0
;MyProject.c,181 :: 		PORTB=0b01111110;
	MOVLW      126
	MOVWF      PORTB+0
;MyProject.c,183 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;MyProject.c,184 :: 		Sound_Init(&PORTC, 0);
	MOVLW      PORTC+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;MyProject.c,185 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,186 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,189 :: 		Lcd_Out(1, 1, "Key:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,190 :: 		Lcd_Out(2, 1, "Password:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,191 :: 		ADC_Init();
	CALL       _ADC_Init+0
;MyProject.c,192 :: 		ldr=0;
	CLRF       _ldr+0
	CLRF       _ldr+1
;MyProject.c,193 :: 		while(1)
L_main36:
;MyProject.c,195 :: 		if(cpt==4)
	MOVF       _cpt+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main38
;MyProject.c,196 :: 		cpt =1;
	MOVLW      1
	MOVWF      _cpt+0
L_main38:
;MyProject.c,197 :: 		ldr=ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _ldr+0
	MOVF       R0+1, 0
	MOVWF      _ldr+1
;MyProject.c,198 :: 		ldr1=100-ldr*0.09766;   //   100/1024=0.09766
	CALL       _Int2Double+0
	MOVLW      247
	MOVWF      R4+0
	MOVLW      1
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      123
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      72
	MOVWF      R0+2
	MOVLW      133
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0+0, 0
	MOVWF      _ldr1+0
	MOVF       R0+1, 0
	MOVWF      _ldr1+1
;MyProject.c,199 :: 		FloatToStr(ldr1,ch);
	CALL       _Int2Double+0
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _ch+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;MyProject.c,200 :: 		j=0;
	CLRF       _j+0
;MyProject.c,201 :: 		while  (j!=LengthPassWord)
L_main39:
	MOVF       _j+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main40
;MyProject.c,203 :: 		kp= GetKeyPressed();
	CALL       _GetKeyPressed+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;MyProject.c,204 :: 		Tone1();
	CALL       _Tone1+0
;MyProject.c,205 :: 		if(kp==35)
	MOVF       _kp+0, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main41
;MyProject.c,206 :: 		{ if(j==0)
	MOVF       _j+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main42
;MyProject.c,207 :: 		break;
	GOTO       L_main40
L_main42:
;MyProject.c,208 :: 		j--;
	DECF       _j+0, 1
;MyProject.c,209 :: 		if(Password[j]+48==aux[j])
	MOVF       _j+0, 0
	ADDLW      _Password+0
	MOVWF      FSR
	MOVLW      48
	ADDWF      INDF+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSC      STATUS+0, 0
	INCF       R2+1, 1
	MOVF       _j+0, 0
	ADDLW      _aux+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	MOVLW      0
	XORWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main67
	MOVF       R1+0, 0
	XORWF      R2+0, 0
L__main67:
	BTFSS      STATUS+0, 2
	GOTO       L_main43
;MyProject.c,210 :: 		count--;
	DECF       _count+0, 1
L_main43:
;MyProject.c,211 :: 		kp=0;
	CLRF       _kp+0
;MyProject.c,212 :: 		Lcd_Chr(1, 10+j, kp);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _j+0, 0
	ADDLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,213 :: 		Lcd_Chr(2, 10+j, kp);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _j+0, 0
	ADDLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,214 :: 		continue;
	GOTO       L_main39
;MyProject.c,215 :: 		}
L_main41:
;MyProject.c,216 :: 		Lcd_Chr(1, 10+j, kp);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _j+0, 0
	ADDLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,217 :: 		Lcd_Chr(2, 10+j, '*');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       _j+0, 0
	ADDLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      42
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,218 :: 		aux[j]=kp;
	MOVF       _j+0, 0
	ADDLW      _aux+0
	MOVWF      FSR
	MOVF       _kp+0, 0
	MOVWF      INDF+0
;MyProject.c,219 :: 		if(Password[j]+48==kp )
	MOVF       _j+0, 0
	ADDLW      _Password+0
	MOVWF      FSR
	MOVLW      48
	ADDWF      INDF+0, 0
	MOVWF      R1+0
	CLRF       R1+1
	BTFSC      STATUS+0, 0
	INCF       R1+1, 1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main68
	MOVF       _kp+0, 0
	XORWF      R1+0, 0
L__main68:
	BTFSS      STATUS+0, 2
	GOTO       L_main44
;MyProject.c,220 :: 		count++;
	INCF       _count+0, 1
L_main44:
;MyProject.c,221 :: 		j++;}
	INCF       _j+0, 1
	GOTO       L_main39
L_main40:
;MyProject.c,224 :: 		if ((count==LengthPassWord) && (ldr>=930) )
	MOVF       _count+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main47
	MOVLW      128
	XORWF      _ldr+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main69
	MOVLW      162
	SUBWF      _ldr+0, 0
L__main69:
	BTFSS      STATUS+0, 0
	GOTO       L_main47
L__main66:
;MyProject.c,226 :: 		count = 0;j=0;
	CLRF       _count+0
	CLRF       _j+0
;MyProject.c,227 :: 		Lcd_Out(1,1,"luminosite:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,228 :: 		Lcd_Out(1,12,ch);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _ch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,229 :: 		Lcd_Out(1,14," % ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,230 :: 		Lcd_Out(2,10,"Correct");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,231 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;MyProject.c,232 :: 		PORTB.F7=1;
	BSF        PORTB+0, 7
;MyProject.c,233 :: 		Melody();
	CALL       _Melody+0
;MyProject.c,234 :: 		Sens_1_motor();
	CALL       _Sens_1_motor+0
;MyProject.c,235 :: 		Frein_motor();
	CALL       _Frein_motor+0
;MyProject.c,236 :: 		delay_ms(Temps_ms_door);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	DECFSZ     R11+0, 1
	GOTO       L_main48
	NOP
;MyProject.c,237 :: 		Sens_2_motor();
	CALL       _Sens_2_motor+0
;MyProject.c,238 :: 		Frein_motor();
	CALL       _Frein_motor+0
;MyProject.c,242 :: 		PORTC=0x00; }
	CLRF       PORTC+0
	GOTO       L_main49
L_main47:
;MyProject.c,243 :: 		else if ((count==LengthPassWord) && (ldr<930) )
	MOVF       _count+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main52
	MOVLW      128
	XORWF      _ldr+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main70
	MOVLW      162
	SUBWF      _ldr+0, 0
L__main70:
	BTFSC      STATUS+0, 0
	GOTO       L_main52
L__main65:
;MyProject.c,244 :: 		{    count = 0;j=0;
	CLRF       _count+0
	CLRF       _j+0
;MyProject.c,245 :: 		Lcd_Out(1,1,"luminosite:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,246 :: 		Lcd_Out(1,12,ch);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      12
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _ch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,247 :: 		Lcd_Out(1,14," % ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,248 :: 		Lcd_Out(2,10,"Correct");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,249 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;MyProject.c,250 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;MyProject.c,251 :: 		Melody2();
	CALL       _Melody2+0
;MyProject.c,252 :: 		Sens_1_motor();
	CALL       _Sens_1_motor+0
;MyProject.c,253 :: 		Frein_motor();
	CALL       _Frein_motor+0
;MyProject.c,254 :: 		delay_ms(Temps_ms_door);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main53:
	DECFSZ     R13+0, 1
	GOTO       L_main53
	DECFSZ     R12+0, 1
	GOTO       L_main53
	DECFSZ     R11+0, 1
	GOTO       L_main53
	NOP
;MyProject.c,255 :: 		Sens_2_motor();
	CALL       _Sens_2_motor+0
;MyProject.c,256 :: 		Frein_motor();
	CALL       _Frein_motor+0
;MyProject.c,259 :: 		}
	GOTO       L_main54
L_main52:
;MyProject.c,263 :: 		count=0; j=0;
	CLRF       _count+0
	CLRF       _j+0
;MyProject.c,264 :: 		Lcd_Out(2,10,"Erreur");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,265 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;MyProject.c,266 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main55:
	DECFSZ     R13+0, 1
	GOTO       L_main55
	DECFSZ     R12+0, 1
	GOTO       L_main55
	DECFSZ     R11+0, 1
	GOTO       L_main55
	NOP
	NOP
;MyProject.c,267 :: 		PORTC=0x00;
	CLRF       PORTC+0
;MyProject.c,269 :: 		CntWrongPW++;
	INCF       _CntWrongPW+0, 1
;MyProject.c,271 :: 		if(CntWrongPW==NumCodeRepeat)
	MOVF       _CntWrongPW+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main56
;MyProject.c,273 :: 		CntWrongPW=0;
	CLRF       _CntWrongPW+0
;MyProject.c,274 :: 		count=0;
	CLRF       _count+0
;MyProject.c,275 :: 		kp=GetKeyPressed()-48;
	CALL       _GetKeyPressed+0
	MOVLW      48
	SUBWF      R0+0, 0
	MOVWF      _kp+0
;MyProject.c,276 :: 		Tone1();
	CALL       _Tone1+0
;MyProject.c,277 :: 		while(kp=GetKeyPressed()-48!=Enable_PW)
L_main57:
	CALL       _GetKeyPressed+0
	MOVLW      48
	SUBWF      R0+0, 0
	MOVWF      R1+0
	CLRF       R1+1
	BTFSS      STATUS+0, 0
	DECF       R1+1, 1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVLW      8
	XORWF      R1+0, 0
L__main71:
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main58
;MyProject.c,279 :: 		Lcd_Out(2,1,"Password Blocked");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,280 :: 		Lcd_Out(1,1,"Password Blocked");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,281 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;MyProject.c,283 :: 		while(1)
L_main59:
;MyProject.c,284 :: 		{   if(cpt==1)
	MOVF       _cpt+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main61
;MyProject.c,285 :: 		Melody_alarme_1();
	CALL       _Melody_alarme_1+0
L_main61:
;MyProject.c,286 :: 		if(cpt==2)
	MOVF       _cpt+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main62
;MyProject.c,287 :: 		Melody_alarme_2();
	CALL       _Melody_alarme_2+0
L_main62:
;MyProject.c,288 :: 		if(cpt==3)
	MOVF       _cpt+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main63
;MyProject.c,289 :: 		Melody_alarme_3();
	CALL       _Melody_alarme_3+0
L_main63:
;MyProject.c,292 :: 		if(PORTB.F0==1) break;
	BTFSS      PORTB+0, 0
	GOTO       L_main64
	GOTO       L_main60
L_main64:
;MyProject.c,293 :: 		}
	GOTO       L_main59
L_main60:
;MyProject.c,294 :: 		PORTC=0x00;
	CLRF       PORTC+0
;MyProject.c,296 :: 		}
	GOTO       L_main57
L_main58:
;MyProject.c,297 :: 		}}
L_main56:
L_main54:
L_main49:
;MyProject.c,298 :: 		PORTB.F7=0;
	BCF        PORTB+0, 7
;MyProject.c,299 :: 		cpt ++;
	INCF       _cpt+0, 1
;MyProject.c,300 :: 		ldr=0;
	CLRF       _ldr+0
	CLRF       _ldr+1
;MyProject.c,301 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,302 :: 		Lcd_Out(1, 1, "Key  :");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,303 :: 		Lcd_Out(2, 1, "Password:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,305 :: 		}  }
	GOTO       L_main36
	GOTO       $+0
; end of _main
