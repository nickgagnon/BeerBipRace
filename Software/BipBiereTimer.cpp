#include <Arduino.h>
#include <stdint.h>

#include "BipBiereTimer.h"
#include "BipBierePrint.h"

uint32_t LastTimerPrint;
uint16_t IntervalTimerPrint;

uint8_t Minute;
uint8_t Seconde;

uint32_t NextShootTime;
bool ANS;

String TextTimer;

void TimerSetup() {
  LastTimerPrint = 0;
  IntervalTimerPrint = 1000;
  NextShootTime = 60000;
  ANS = 0;
  TextTimer = "";
}

bool TimerLoop(uint32_t Now) {
  if ((Now - LastTimerPrint) >= IntervalTimerPrint) {

    int32_t TimeLeftPrint = NextShootTime - Now;

    uint8_t Minute = (TimeLeftPrint / 60000);
    uint8_t Seconde = (TimeLeftPrint / 1000) - (Minute * 60);

    TextTimer = "";
    TextTimer += Minute;
    TextTimer += ":";
    if (Seconde < 10) TextTimer += "0";
    TextTimer += Seconde;
    LcdPrint(TextTimer, 12, 0);

    if ((Now - NextShootTime) <= IntervalTimerPrint) {
      TextTimer = "DRINK";
      ANS = 1;
    } else {
      TextTimer = "     ";
    }
    LcdPrint(TextTimer, 0, 1);

    LastTimerPrint = Now;
  } else {
    ANS = 0;
  }

  return ANS;
}

void TimerReset(uint32_t root, uint32_t POULE) {
  NextShootTime = POULE + root;

  return;
}

