#include <Arduino.h>
#include <stdint.h>

void TimerSetup();

bool TimerLoop(uint32_t Now);

void TimerReset(uint32_t TimeLeft, uint32_t Now);
