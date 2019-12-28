#line 1 "D:/Projet électronique Sérrure codée électronique à base du micro 16F877/MIKROC/MyProject.c"
#line 12 "D:/Projet électronique Sérrure codée électronique à base du micro 16F877/MIKROC/MyProject.c"
sbit LCD_RS at RB1_bit;
sbit LCD_EN at RB2_bit;
sbit LCD_D4 at RB3_bit;
sbit LCD_D5 at RB4_bit;
sbit LCD_D6 at RB5_bit;
sbit LCD_D7 at RB6_bit;

sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_EN_Direction at TRISB2_bit;
sbit LCD_D4_Direction at TRISB3_bit;
sbit LCD_D5_Direction at TRISB4_bit;
sbit LCD_D6_Direction at TRISB5_bit;
sbit LCD_D7_Direction at TRISB6_bit;


char keypadPort at PORTD;

unsigned short kp, cpt=1,count=0,i,j;
unsigned short CntWrongPW=0;
unsigned short Password[ 5 ]={1,2,3,4,5},aux[ 5 -1];

void Tone1() {
 Sound_Play(659, 250);
}

void Tone2() {
 Sound_Play(698, 250);
}

void Tone3() {
 Sound_Play(784, 250);
}
void ToneA() {
 Sound_Play( 880, 50);
}
void ToneC() {
 Sound_Play(1046, 50);
}
void ToneE() {
 Sound_Play(1318, 50);
}

void Melody2() {
 unsigned short i;
 for (i = 9; i > 0; i--) {
 ToneA(); ToneC(); ToneE();
 }
}



void Melody() {
 Tone1(); Tone2(); Tone3(); Tone3();
 Tone1(); Tone2(); Tone3(); Tone3();
 Tone1(); Tone2(); Tone3();
 Tone1(); Tone2(); Tone3(); Tone3();
 Tone1(); Tone2(); Tone3();
 Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
}
#line 85 "D:/Projet électronique Sérrure codée électronique à base du micro 16F877/MIKROC/MyProject.c"
void Melody_alarme_1(void)
{
 Sound_Play(400, 100);
 delay_ms(50);
 Sound_Play(600, 50);
 delay_ms(50);
 Sound_Play(800, 100);
 delay_ms(50);
 Sound_Play(700, 50);
 delay_ms(50);
 Sound_Play(500, 50);
}

void Melody_alarme_2(void)
{
 Sound_Play(400, 100);
 delay_ms(50);
 Sound_Play(500, 70);
 delay_ms(50);
 Sound_Play(600, 80);
 delay_ms(50);
 Sound_Play(700, 48);
 delay_ms(50);
 Sound_Play(800, 102);
 Sound_Play(900, 150);
 delay_ms(50);
 Sound_Play(1000, 40);
}
void Melody_alarme_3(void)
{
 Sound_Play(1500, 100);
 delay_ms(50);
 Sound_Play(2000, 50);
}

unsigned short GetKeyPressed(void)
{
 kp=0;
 do
 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp)
 {
 case 1: kp = 49; break;
 case 2: kp = 50; break;
 case 3: kp = 51; break;
 case 4: kp = 65; break;
 case 5: kp = 52; break;
 case 6: kp = 53; break;
 case 7: kp = 54; break;
 case 8: kp = 66; break;
 case 9: kp = 55; break;
 case 10: kp = 56; break;
 case 11: kp = 57; break;
 case 12: kp = 67; break;
 case 13: kp = 42; break;
 case 14: kp = 48; break;
 case 15: kp = 35; break;
 case 16: kp = 68; break;
 }
 return kp ;
}

void Sens_1_motor(void)
{
 PORTC.F4=1;
 PORTC.F5=0;
 delay_ms( 5000 );
}

void Sens_2_motor(void)
{
 PORTC.F4=0;
 PORTC.F5=1;
 delay_ms( 5000 );
}

void Frein_motor(void)
{
 PORTC.F4=0;
 PORTC.F5=0;


}

 unsigned char ch[10];
 unsigned char txt[5];
 int ldr;
 int ldr1;

void main()
{
 TRISB = 0x01;
 TRISC = 0x00;
 PORTC=0x00;
 PORTB=0b01111110;

 Keypad_Init();
 Sound_Init(&PORTC, 0);
 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);


 Lcd_Out(1, 1, "Key:");
 Lcd_Out(2, 1, "Password:");
 ADC_Init();
 ldr=0;
 while(1)
 {
 if(cpt==4)
 cpt =1;
 ldr=ADC_Read(0);
 ldr1=100-ldr*0.09766;
 FloatToStr(ldr1,ch);
 j=0;
 while (j!= 5 )
 {
 kp= GetKeyPressed();
 Tone1();
 if(kp==35)
 { if(j==0)
 break;
 j--;
 if(Password[j]+48==aux[j])
 count--;
 kp=0;
 Lcd_Chr(1, 10+j, kp);
 Lcd_Chr(2, 10+j, kp);
 continue;
 }
 Lcd_Chr(1, 10+j, kp);
 Lcd_Chr(2, 10+j, '*');
 aux[j]=kp;
 if(Password[j]+48==kp )
 count++;
 j++;}


 if ((count== 5 ) && (ldr>=930) )
 {
 count = 0;j=0;
 Lcd_Out(1,1,"luminosite:");
 Lcd_Out(1,12,ch);
 Lcd_Out(1,14," % ");
 Lcd_Out(2,10,"Correct");
 PORTC.F2=1;
 PORTB.F7=1;
 Melody();
 Sens_1_motor();
 Frein_motor();
 delay_ms( 3000 );
 Sens_2_motor();
 Frein_motor();



 PORTC=0x00; }
 else if ((count== 5 ) && (ldr<930) )
 { count = 0;j=0;
 Lcd_Out(1,1,"luminosite:");
 Lcd_Out(1,12,ch);
 Lcd_Out(1,14," % ");
 Lcd_Out(2,10,"Correct");
 PORTC.F2=1;
 PORTB.F7=0;
 Melody2();
 Sens_1_motor();
 Frein_motor();
 delay_ms( 3000 );
 Sens_2_motor();
 Frein_motor();


 }
 else
 {

 count=0; j=0;
 Lcd_Out(2,10,"Erreur");
 PORTC.F1=1;
 delay_ms(1000);
 PORTC=0x00;

 CntWrongPW++;

 if(CntWrongPW== 2 )
 {
 CntWrongPW=0;
 count=0;
 kp=GetKeyPressed()-48;
 Tone1();
 while(kp=GetKeyPressed()-48!= 8 )
 {
 Lcd_Out(2,1,"Password Blocked");
 Lcd_Out(1,1,"Password Blocked");
 PORTC.F1=1;
 {
 while(1)
 { if(cpt==1)
 Melody_alarme_1();
 if(cpt==2)
 Melody_alarme_2();
 if(cpt==3)
 Melody_alarme_3();


 if(PORTB.F0==1) break;
 }
 PORTC=0x00;
 }
 }
 }}
 PORTB.F7=0;
 cpt ++;
 ldr=0;
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1, 1, "Key  :");
 Lcd_Out(2, 1, "Password:");

 } }
