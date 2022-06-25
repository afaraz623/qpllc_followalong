#ifndef __BOARD_SUPPORT_H__
#define __BOARD_SUPPORT_H__

#include <stdint.h>
#include <stm32f3xx.h>

void BS_init(void);

void BS_gpioToggle(GPIO_TypeDef *gpiox, uint32_t gpio_pin);

void BS_delay(uint32_t ticks);

#endif
