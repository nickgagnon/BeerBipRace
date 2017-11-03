#include <Arduino.h>
#include <stdint.h>

void BuzzerSetup(uint8_t BPin);

bool BuzzerLoop(uint32_t ActualTime);

void BuzzerAdd(uint16_t UpTime, uint16_t DownTime, uint8_t NbBuzz);

