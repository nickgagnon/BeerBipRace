#include <Arduino.h>
#include <stdint.h>
#include <LiquidCrystal.h>

#include "BipBierePrint.h"

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void PrintSetup() {
  lcd.begin(16, 2);
  return;
}

void LcdPrint(String Text, uint8_t x, uint8_t y) {
  lcd.setCursor(x, y);
  lcd.print(Text);
  return;
}

