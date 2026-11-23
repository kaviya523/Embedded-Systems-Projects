
#include <htc.h>


#define RS RC0
#define RW RC1
#define E  RC2

void lcd_delay(void);
void lcd_int(void);
void cmd(unsigned char a);
void dat(unsigned char b);
void show(const char *s);
unsigned int adc_read(void);

void lcd_delay(void)
{
    unsigned int i;
    for(i = 0; i < 1000; i++);
}

void main(void)
{
    unsigned int adcval;

    TRISB = 0x00;
    TRISC = 0x00;
    TRISA = 0x01;

    PORTB = 0x00;
    PORTC = 0x00;

    ADCON1 = 0x8E;
    ADCON0 = 0x81;

    lcd_int();

    while(1)
    {
        adcval = adc_read();

        cmd(0x80);
        show("ADC Value:");

        cmd(0xC0);
        dat((adcval / 1000) + '0');
        dat(((adcval / 100) % 10) + '0');
        dat(((adcval / 10) % 10) + '0');
        dat((adcval % 10) + '0');

        lcd_delay();
    }
}

void lcd_int(void)
{
    lcd_delay();
    cmd(0x38);
    cmd(0x0C);
    cmd(0x06);
    cmd(0x01);
    lcd_delay();
}

void cmd(unsigned char a)
{
    PORTB = a;
    RS = 0;
    RW = 0;
    E = 1;
    lcd_delay();
    E = 0;
    lcd_delay();
}

void dat(unsigned char b)
{
    PORTB = b;
    RS = 1;
    RW = 0;
    E = 1;
    lcd_delay();
    E = 0;
    lcd_delay();
}

void show(const char *s)
{
    while(*s)
    {
        dat(*s++);
    }
}

unsigned int adc_read(void)
{
    unsigned int adcval;

    lcd_delay();

    ADCON0 = ADCON0 | 0x04;

    while(ADCON0 & 0x04)
    {
        // Wait for conversion to finish
    }

    adcval = ((unsigned int)ADRESH << 8) | ADRESL;

    return adcval;
}


