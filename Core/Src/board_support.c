/* Board support source file consisting of board specific peripheral initialization & other functional definitions */

#include <board_support.h>

#define TICKS_PER_MS        1000U
#define BS_TO_BR_OFFSET     16U

static uint32_t volatile l_tickctr;

__attribute__((naked)) void assert_failed (char const *file, int line) {
    /* TBD: damage control */
    NVIC_SystemReset(); /* reset the system */
}

/* initial peripheral setup */
void BS_init(void)
{
    // gpioe on and set to gp output
    RCC->AHBENR |= RCC_AHBENR_GPIOEEN;
	GPIOE->MODER |= GPIO_MODER_MODER8_0;
	
	SysTick_Config(SystemCoreClock / TICKS_PER_MS);
	__enable_irq();
}

void BS_gpioToggle(GPIO_TypeDef *gpiox, uint32_t gpio_pin)
{
    uint32_t odr;
    odr = gpiox->ODR;
    gpiox->BSRR = ((odr & gpio_pin) << BS_TO_BR_OFFSET) | (~odr & gpio_pin);
}

void SysTick_Handler()
{
    ++l_tickctr;
}

uint32_t tickCtr_internal(void)
{
    uint32_t tickctr;

    __disable_irq();
    tickctr = l_tickctr; // crtical section
    __enable_irq();

    return tickctr;
}

void BS_delay(uint32_t ms)
{
    uint32_t start = tickCtr_internal();
    while ((tickCtr_internal() - start) < ms){}
}

