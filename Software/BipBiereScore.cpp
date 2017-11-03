#include <Arduino.h>
#include <stdint.h>

#include "BipBierePrint.h"
#include "BipBiereScore.h"

uint16_t NbPalier;
uint16_t NbShoot;

uint32_t LastScorePrint;
uint16_t IntervalScorePrint;

enum EtatAffichage {
  PALIER,
  SCORE
};

EtatAffichage EtatAffichage;

String Text;

void ScoreSetup(uint16_t Palier, uint16_t Shoot) {
  LastScorePrint = 0;
  IntervalScorePrint = 2000;
  Text = "";
  EtatAffichage = PALIER;
  NbPalier = Palier;
  NbShoot = Shoot;
  return;
}

void ScoreLoop(uint32_t Now) {
  if ((Now - LastScorePrint) > IntervalScorePrint) {
    Text = "";

    if (EtatAffichage == PALIER) {
      Text += "Palier ";
      if (NbPalier < 10) Text += " ";
      Text += NbPalier;
      Text += " ";
      LcdPrint(Text, 0, 0);
      EtatAffichage = SCORE;
    }
    else if (EtatAffichage == SCORE) {
      Text += "Shoot  ";
      if (NbShoot < 10) Text += " ";
      Text += NbShoot;
      LcdPrint(Text, 0, 0);
      EtatAffichage = PALIER;
    }

    LastScorePrint = Now;
  }
  return;
}

void ScoreSet(uint16_t Palier, uint16_t Shoot) {
  NbPalier = Palier;
  NbShoot = Shoot;
  return;
}

