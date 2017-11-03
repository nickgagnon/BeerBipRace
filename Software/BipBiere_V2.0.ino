#include <Arduino.h>
#include <stdint.h>

#include "BipBiereBuzzer.h"
#include "BipBiereClock.h"
#include "BipBiereScore.h"
#include "BipBierePrint.h"
#include "BipBiereTimer.h"

#define BUZZPIN 10


const uint32_t TimeToNextPalier = 240000;
const uint16_t TimeToNextShootStart = 60000;
const float FactorDecrementation = 0.97;

uint32_t TimeLastPalier;
uint32_t TimeToNextShoot;
uint16_t nbPalier;
uint16_t nbShoot;

uint32_t TimeLastBegin;
uint16_t IntervalBegin;
uint8_t BeginCountdown;

uint32_t Now;
uint32_t NowAjustement;

enum PLAYSTATE {
  BEGIN,
  PLAYING
};

PLAYSTATE PLAYSTATE;

void setup() {
  Serial.begin(115200);

  nbPalier = 0;
  nbShoot = 0;

  ClockSetup();
  BuzzerSetup(BUZZPIN);
  ScoreSetup(nbPalier, nbShoot);
  PrintSetup();
  TimerSetup();
  TimeLastPalier = 0;

  TimeLastBegin = 0;
  IntervalBegin = 1000;

  PLAYSTATE = BEGIN;
  BeginCountdown = 61;
  NowAjustement = 0;
}

void loop() {
  Now = millis() - NowAjustement;
  switch (PLAYSTATE) {
    case BEGIN:
      if ((Now - TimeLastBegin) > IntervalBegin) {
        BeginCountdown--;
        if (BeginCountdown >= 10) {
          LcdPrint(String(BeginCountdown), 0, 0);
        } else {
          LcdPrint(String(0), 0, 0);
          LcdPrint(String(BeginCountdown), 1, 0);
        }
        
        if (BeginCountdown == 0) {
          PLAYSTATE = PLAYING;
          BuzzerAdd(750, 0, 1);
          nbShoot++;
          NowAjustement = Now;
          Now = millis() - NowAjustement;
          ScoreSet(nbPalier, nbShoot);
          ClockLoop(Now);
          ScoreLoop(Now);
        }
        TimeLastBegin = Now;
      }

      break;
    case PLAYING:

      ClockLoop(Now);
      ScoreLoop(Now);
      if (TimerLoop(Now) == 1) {
        nbShoot++;
        BuzzerAdd(750, 200, 1);
        if ((Now - TimeLastPalier) >= TimeToNextPalier) {
          nbPalier++;
          TimeLastPalier = Now;
          BuzzerAdd(100, 100, 4);
        }
        TimeToNextShoot = TimeToNextShootStart * 1.0 * pow(FactorDecrementation, (nbPalier));
        TimerReset(TimeToNextShoot, Now);
        ScoreSet(nbPalier, nbShoot);
      }
      break;
  }

  BuzzerLoop(Now);
}















