#include <Arduino.h>
#include <stdint.h>

#include "BipBiereBuzzer.h"

#define MAXBUZZ   10
#define BUZZV     128
#define SILENCEV  0

uint8_t BuzzPin;
uint8_t BuzzValue;

uint16_t BuzzUpTime[MAXBUZZ];
uint16_t BuzzDownTime[MAXBUZZ];

uint8_t NbBuzzLeft;

uint32_t LastBuzz;
uint16_t IntervalBuzz;

enum ETAT {
  SILENCE,
  BUZZ,
  WAIT
};

ETAT ETAT = WAIT;

void BuzzerSetup(uint8_t BPin) {
  BuzzPin = BPin;
  pinMode(BuzzPin, OUTPUT);
  BuzzValue = SILENCEV;
  analogWrite(BuzzPin, BuzzValue);
  for (uint8_t i = 0; i < MAXBUZZ; i++) {
    BuzzUpTime[i] = 0;
    BuzzDownTime[i] = 0;
  }
  NbBuzzLeft = 0;

  LastBuzz = 0;
  IntervalBuzz = 0;
  return;
}
bool BuzzerLoop(uint32_t Now) {
  //Serial.println(String(Now) + '\t' + String(LastBuzz) + '\t' + String(IntervalBuzz));
  if ((Now - LastBuzz) > IntervalBuzz) {
    if (ETAT == BUZZ) {
      IntervalBuzz = BuzzUpTime[0];
      BuzzValue = BUZZV;
      analogWrite(BuzzPin, BuzzValue);
      ETAT = SILENCE;

    } else if (ETAT == SILENCE) {

      NbBuzzLeft--;
      BuzzValue = SILENCEV;
      if (NbBuzzLeft == 0) {
        IntervalBuzz = 0;
        ETAT = WAIT;
      } else {
        IntervalBuzz = BuzzDownTime[0];
        ETAT = BUZZ;
      }
      analogWrite(BuzzPin, BuzzValue);
      for (uint8_t i = 0; i < (NbBuzzLeft - 1); i++) {
        BuzzUpTime[i] = BuzzUpTime[i + 1];
        BuzzDownTime[i] = BuzzDownTime[i + 1];
      }

    } else if ((ETAT == WAIT) && (NbBuzzLeft > 0)) {

      ETAT = BUZZ;
    }
    LastBuzz = Now;
  }
  return NbBuzzLeft;
}

void BuzzerAdd(uint16_t UpTime, uint16_t DownTime, uint8_t NbBuzz) {
  for (uint8_t i = NbBuzzLeft; i < NbBuzz; i++) {
    BuzzUpTime[i] = UpTime;
    BuzzDownTime[i] = DownTime;
  }
  NbBuzzLeft += NbBuzz;
  Serial.println("BIP= " + String(NbBuzzLeft));
  return;
}

