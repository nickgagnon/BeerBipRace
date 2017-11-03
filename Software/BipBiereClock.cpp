#include <Arduino.h>
#include <stdint.h>

#include "BipBierePrint.h"
#include "BipBiereClock.h"

uint32_t LastClockPrint;
uint16_t IntervalClockPrint;

void ClockSetup() {
  LastClockPrint = 0;
  IntervalClockPrint = 55;
  return;
}

void ClockLoop(uint32_t Now) {
  if ((Now - LastClockPrint) > IntervalClockPrint) {
    uint8_t Heure = (Now / 3600000);
    uint8_t Minute = (Now / 60000) - (Heure * 60);
    uint8_t Seconde = (Now / 1000) - (Minute * 60) - (Heure * 3600);
    String Text = "";
    
    Text += Heure;
    Text += ":";
    if (Minute < 10) Text += "0";
    Text += Minute;
    Text += ":";
    if (Seconde < 10) Text += "0";
    Text += Seconde;

    LcdPrint(Text, 9, 1);

    LastClockPrint = Now;
  }
  return;
}

