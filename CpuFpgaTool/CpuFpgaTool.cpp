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

CpuFpgaTool::CpuFpgaTool() {
	fd_spi = open(device_spi, O_RDWR);
	if (fd_spi < 0) {
		pabort("can't open device SPI");
	}

	fd_gpio = open(device_gpio, O_RDWR);
	if (fd_gpio < 0) {
		pabort("can't open device GPIO");
	}

	//set GPIO0 as output and clear it
	if(GPIO_OutEnable(GPIO0) < 0) {
		pabort("GPIO_OutEnable::failed");
	}
	if (GPIO_OutClear(GPIO0) < 0) {
		pabort("GPIO_OutClear::failed");
	}

	// initialize mutex
	pthread_mutex_init(&mutex_spi, NULL);
	pthread_mutex_init(&mutex_gpio, NULL);
}

CpuFpgaTool::~CpuFpgaTool() {
	pthread_mutex_destroy(&mutex_spi);
	pthread_mutex_destroy(&mutex_gpio);

	//disable GPIO0
	GPIO_OutDisable(GPIO0);

	close(fd_spi);
	close(fd_gpio);
}

void CpuFpgaTool::pabort(const char *s) {
	perror(s);
	abort();
}

bool CpuFpgaTool::readParams(unsigned char address, unsigned short length, unsigned char* data) {
	// TODO

	return true;
}

bool CpuFpgaTool::writeParams(unsigned char address, unsigned short length, const unsigned char* data) {
	// set GPIO0
	GPIO_OutSet(GPIO0);

	buff[0] = 'A';
	buff[1] = length & 0xFF;
	buff[2] = 0;
	memcpy(buff + 3, data, length);
	int ret = writeTS(fd_spi, buff, length + 3);

	// clear GPIO0
	GPIO_OutClear(GPIO0);

	return (ret == length + 3);
}

int CpuFpgaTool::GPIO_OutEnable(unsigned int dwEnBits)
{
	int 				rc;
	struct double_pars	dpars;

	dpars.par1 = EM335X_GPIO_OUTPUT_ENABLE;		// 0
	dpars.par2 = dwEnBits;

	rc = writeTS(fd_gpio, &dpars, sizeof(struct double_pars));

	return rc;
}

int CpuFpgaTool::GPIO_OutDisable(unsigned int dwDisBits)
{
	int 				rc;
	struct double_pars	dpars;

	dpars.par1 = EM335X_GPIO_OUTPUT_DISABLE;	// 1
	dpars.par2 = dwDisBits;

	rc = writeTS(fd_gpio, &dpars, sizeof(struct double_pars));

	return rc;
}

int CpuFpgaTool::GPIO_OutSet(unsigned int dwSetBits)
{
	int 				rc;
	struct double_pars	dpars;

	dpars.par1 = EM335X_GPIO_OUTPUT_SET;	// 2
	dpars.par2 = dwSetBits;

	rc = writeTS(fd_gpio, &dpars, sizeof(struct double_pars));

	return rc;
}

int CpuFpgaTool::GPIO_OutClear(unsigned int dwClearBits)
{
	int 				rc;
	struct double_pars	dpars;

	dpars.par1 = EM335X_GPIO_OUTPUT_CLEAR;	// 3
	dpars.par2 = dwClearBits;

	rc = writeTS(fd_gpio, &dpars, sizeof(struct double_pars));

	return rc;
}

int CpuFpgaTool::GPIO_PinState(unsigned int* pPinState)
{
	int 				rc;
	struct double_pars	dpars;

	dpars.par1 = EM335X_GPIO_INPUT_STATE;	// 5
	dpars.par2 = *pPinState;

	rc = readTS(fd_gpio, &dpars, sizeof(struct double_pars));

	if(!rc) {
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

int CpuFpgaTool::writeTS (int __fd, __const void *__buf, size_t __n) {
	if (__fd == fd_spi) {
		pthread_mutex_lock(&mutex_spi);
	} else if (__fd == fd_gpio) {
		pthread_mutex_lock(&mutex_gpio);
	} else {
		// error
		return -1;
	}

	int rc = write(__fd, __buf, __n);

	if (__fd == fd_spi) {
		pthread_mutex_unlock(&mutex_spi);
	} else if (__fd == fd_gpio) {
		pthread_mutex_unlock(&mutex_gpio);
	}

	return rc;
}

int CpuFpgaTool::readTS (int __fd, void *__buf, size_t __nbytes) {
	if (__fd == fd_spi) {
		pthread_mutex_lock(&mutex_spi);
	} else if (__fd == fd_gpio) {
		pthread_mutex_lock(&mutex_gpio);
	} else {
		// error
		return -1;
	}

	int rc = read(__fd, __buf, __nbytes);

	if (__fd == fd_spi) {
		pthread_mutex_unlock(&mutex_spi);
	} else if (__fd == fd_gpio) {
		pthread_mutex_unlock(&mutex_gpio);
	}

	return rc;
}
