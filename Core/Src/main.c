#include <board_support.h>


int main(void)
{
	BS_init();

	while(1)
	{
		BS_gpioToggle(GPIOE, GPIO_BSRR_BS_8);
		BS_delay(1000);
	}

	return 0;
}
