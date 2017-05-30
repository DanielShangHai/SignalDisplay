/*
 * CpuFpgaTool.h
 *
 */

#ifndef CPUFPGATOOL_H_
#define CPUFPGATOOL_H_

class CpuFpgaTool {
public:
	// for spi
	bool readParams(unsigned char address, unsigned short length, unsigned char* data);
	bool writeParams(unsigned char address, unsigned short length, const unsigned char* data);

	// for gpio
	int GPIO_OutEnable(unsigned int dwEnBits);
	int GPIO_OutDisable(unsigned int dwDisBits);
	int GPIO_OpenDrainEnable(unsigned int dwODBits);
	int GPIO_OutSet(unsigned int dwSetBits);
	int GPIO_OutClear(unsigned int dwClearBits);
	int GPIO_PinState(unsigned int* pPinState);

	// print message and abort
	static void pabort(const char *s);

	// for debug
	// print regs' data in HEX
	void showFpgaRegsDataHex();

private:
	int fd_spi;
	int fd_gpio;
	unsigned char buff[256];
};

#endif /* CPUFPGATOOL_H_ */
