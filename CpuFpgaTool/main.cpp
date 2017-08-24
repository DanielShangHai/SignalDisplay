/*
 * main.cpp
 *
 */
#include <stdio.h>
#include "CpuFpgaToolDefs.h"
#include "CpuFpgaTool.h"

int main( int argc, char *argv[] )
{
	char action = '\0';
	int length = 0;
	int addr = 0;
	int bufChar;

	CpuFpgaTool tool;

	while (1) {
		printf("Please input A or B or X or S (Write/Read/Exit/Show Register Data):\n");
		scanf("%c", &action);
		if (action == 'X') {
			break;
		} else if (action == 'A') {
			printf("Please enter length to write:\n");
			scanf("%d", &length);
			if (length <= 0) {
				printf("error\n");
				continue;
			}
			printf("Please enter address to write:\n");
			scanf("%d", &addr);

			unsigned char* buff = FpgaRegsData::instance().getAddrRegW(addr);
			for(int i = 0; i < length; ++i) {
				printf("Please enter No.%d byte (HEX):\n", i);
				scanf("%x", &bufChar);
				buff[i] = (unsigned char)bufChar;
			}

			// do write
			if (tool.writeParams((unsigned char)addr, (unsigned short)length, buff)) {
				printf("writeParams OK\n");
			} else {
				printf("writeParams Fail\n");
			}

		} else if (action == 'B') {
			printf("Please enter length to read:\n");
			scanf("%d", &length);
			if (length <= 0) {
				printf("error\n");
				continue;
			}
			printf("Please enter address to read:\n");
			scanf("%d", &addr);

			unsigned char* buff = FpgaRegsData::instance().getAddrRegR(addr);
			// do read
			if (tool.readParams((unsigned char)addr, (unsigned short)length, buff)) {
				printf("readParams OK\n");
			} else {
				printf("readParams Fail\n");
			}
		} else if (action == 'S') {
			tool.showFpgaRegsDataHex();
		}
	}
	return 0;
}
