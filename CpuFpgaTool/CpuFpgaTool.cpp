/*
 * CpuFpgaTool.cpp
 *
 */

#include "CpuFpgaTool.h"
#include "CpuFpgaToolDefs.h"
#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>
#include "em335x_drivers.h"

static const char *device_spi = "/dev/spidev2.0";
static const char *device_gpio = "/dev/em335x_gpio";


void CpuFpgaTool::pabort(const char *s) {
	perror(s);
	abort();
}

bool CpuFpgaTool::readParams(unsigned char address, unsigned short length, unsigned char* data) {
	fd_spi = open(device_spi, O_RDWR);
	if (fd_spi < 0) {
		pabort("can't open device");
		return false;
	}

	// TODO

	close(fd_spi);

	return true;
}

bool CpuFpgaTool::writeParams(unsigned char address, unsigned short length, const unsigned char* data) {
	fd_spi = open(device_spi, O_RDWR);
	if (fd_spi < 0) {
		pabort("can't open device");
		return false;
	}

	buff[0] = 'A';
	buff[1] = length & 0xFF;
	buff[2] = 0;
	memcpy(buff + 3, data, length);
	int ret = write(fd_spi, buff, length + 3);

	close(fd_spi);

	return (ret == length + 3);
}

int CpuFpgaTool::GPIO_OutEnable(unsigned int dwEnBits)
{
	int 				rc;
	struct double_pars	dpars;

	fd_gpio = open(device_gpio, O_RDWR);
	if (fd_gpio < 0) {
		pabort("can't open device");
		return false;
	}

	dpars.par1 = EM335X_GPIO_OUTPUT_ENABLE;		// 0
	dpars.par2 = dwEnBits;

	rc = write(fd_gpio, &dpars, sizeof(struct double_pars));
	close(fd_gpio);
	return rc;
}

int CpuFpgaTool::GPIO_OutDisable(unsigned int dwDisBits)
{
	int 				rc;
	struct double_pars	dpars;

	fd_gpio = open(device_gpio, O_RDWR);
	if (fd_gpio < 0) {
		pabort("can't open device");
		return false;
	}

	dpars.par1 = EM335X_GPIO_OUTPUT_DISABLE;	// 1
	dpars.par2 = dwDisBits;

	rc = write(fd_gpio, &dpars, sizeof(struct double_pars));
	close(fd_gpio);
	return rc;
}

int CpuFpgaTool::GPIO_OutSet(unsigned int dwSetBits)
{
	int 				rc;
	struct double_pars	dpars;

	fd_gpio = open(device_gpio, O_RDWR);
	if (fd_gpio < 0) {
		pabort("can't open device");
		return false;
	}

	dpars.par1 = EM335X_GPIO_OUTPUT_SET;	// 2
	dpars.par2 = dwSetBits;

	rc = write(fd_gpio, &dpars, sizeof(struct double_pars));
	close(fd_gpio);
	return rc;
}

int CpuFpgaTool::GPIO_OutClear(unsigned int dwClearBits)
{
	int 				rc;
	struct double_pars	dpars;

	fd_gpio = open(device_gpio, O_RDWR);
	if (fd_gpio < 0) {
		pabort("can't open device");
		return false;
	}

	dpars.par1 = EM335X_GPIO_OUTPUT_CLEAR;	// 3
	dpars.par2 = dwClearBits;

	rc = write(fd_gpio, &dpars, sizeof(struct double_pars));
	close(fd_gpio);
	return rc;
}

int CpuFpgaTool::GPIO_PinState(unsigned int* pPinState)
{
	int 				rc;
	struct double_pars	dpars;

	fd_gpio = open(device_gpio, O_RDWR);
	if (fd_gpio < 0) {
		pabort("can't open device");
		return false;
	}

	dpars.par1 = EM335X_GPIO_INPUT_STATE;	// 5
	dpars.par2 = *pPinState;

	rc = read(fd_gpio, &dpars, sizeof(struct double_pars));
	close(fd_gpio);
	if(!rc)
	{
		*pPinState = dpars.par2;
	}
	return rc;
}

void CpuFpgaTool::showFpgaRegsDataHex() {
	FpgaRegsData d = FpgaRegsData::instance();

	printf("Registers for Write:\n");
	for (int i = 0; i < REG_W_MAX; ++i) {
		printf("%02X ", d.getRegW(i));
	}
	printf("\n");

	printf("Registers for Read:\n");
	for (int i = 0; i < REG_R_MAX; ++i) {
		printf("%02X ", d.getRegR(i));
	}
	printf("\n");
}
