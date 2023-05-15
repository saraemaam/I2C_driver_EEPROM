/***********************************************************************************************************************
 * File name: EXTERNAL_EEPROM_I2C.c
 * Description: Code to test the external EEPROM driver
 * Author: Sarah
 *********************************************************************************************************************/
#include "external_eeprom.h"
#include "gpio.h"
#include "util/delay.h"
#include "twi.h"

int main(void)
{
	uint8 val = 0;

	/* Initialize the TWI/I2C Driver */
	TWI_init();

	GPIO_setupPortDirection(PORTD_ID,PORT_OUTPUT); /* All PORTD pins are o/p pins */
	GPIO_writePort(PORTD_ID,0x00); /* Turn OFF all LEDS */

	EEPROM_writeByte(0x0311, 0x0F); /* Write 0x0F in the external EEPROM */
	_delay_ms(10);
	EEPROM_readByte(0x0311, &val);  /* Read 0x0F from the external EEPROM */

	while(1)
	{
		GPIO_writePort(PORTD_ID,val); /* out the read value from the external EEPROM */
	}
	return 0;
}
