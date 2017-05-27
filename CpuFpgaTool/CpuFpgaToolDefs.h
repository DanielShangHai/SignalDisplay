/*
 * CpuFpgaToolDefs.h
 *
 */

#ifndef CPUFPGATOOLDEFS_H_
#define CPUFPGATOOLDEFS_H_

#include <memory.h>

#pragma pack(push)
#pragma pack(1)

/*
 * ID <-> Address of FPGA Registers (Write)
 * eg) INTCTRL_L <-> 0
 */
enum FPGA_REGS_ID_W {
	INTCTRL_L = 0,
	INTCTRL_M,
	DAQ_START_L,
	DAQ_START_M,
	CH0SRATE_0,
	CH0SRATE_1,
	CH0SRATE_2,
	CH0SRATE_3,
	CH0DELAY_0,
	CH0DELAY_1,
	CH0DELAY_2,
	CH0DELAY_3,
	CH0MODE,
	CH0ENABLE,
	CH0SLEN_L,
	CH0SLEN_M,
	CH1SRATE_0,
	CH1SRATE_1,
	CH1SRATE_2,
	CH1SRATE_3,
	CH1DELAY_0,
	CH1DELAY_1,
	CH1DELAY_2,
	CH1DELAY_3,
	CH1MODE,
	CH1ENABLE,
	CH1SLEN_L,
	CH1SLEN_M,
	CH2SRATE_0,
	CH2SRATE_1,
	CH2SRATE_2,
	CH2SRATE_3,
	CH2DELAY_0,
	CH2DELAY_1,
	CH2DELAY_2,
	CH2DELAY_3,
	CH2MODE,
	CH2ENABLE,
	CH2SLEN_L,
	CH2SLEN_M,
	CH3SRATE_0,
	CH3SRATE_1,
	CH3SRATE_2,
	CH3SRATE_3,
	CH3DELAY_0,
	CH3DELAY_1,
	CH3DELAY_2,
	CH3DELAY_3,
	CH3MODE,
	CH3ENABLE,
	CH3SLEN_L,
	CH3SLEN_M,
	LEDCTRL,
	ADDR_S_CH0_0,
	ADDR_S_CH0_1,
	ADDR_E_CH0_0,
	ADDR_E_CH0_1,
	ADDR_S_CH1_0,
	ADDR_S_CH1_1,
	ADDR_E_H1_0,
	ADDR_E_CH1_1,
	ADDR_S_CH2_0,
	ADDR_S_CH2_1,
	ADDR_E_CH2_0,
	ADDR_E_CH2_1,
	ADDR_S_CH3_0,
	ADDR_S_CH3_1,
	ADDR_E_CH3_0,
	ADDR_E_CH3_1,

	REG_W_MAX // count of REG_W
};

/*
 * ID <-> Address of FPGA Registers (Read)
 * eg) INTCTRL_L <-> 0
 */
enum FPGA_REGS_ID_R {
	KPTYPE = 0,
	KPVER,
	KPMAJREV,
	KPMINREV,
	CH0STATE_L,
	CH0STATE_M,
	CH0MEM_SPACE_L,
	CH0MEM_SPACE_M,
	CH0DATALEN_L,
	CH0DATALEN_M,
	CH1STATE_L,
	CH1STATE_M,
	CH1MEM_SPACE_L,
	CH1MEM_SPACE_M,
	CH1DATALEN_L,
	CH1DATALEN_M,
	CH2STATE_L,
	CH2STATE_M,
	CH2MEM_SPACE_L,
	CH2MEM_SPACE_M,
	CH2DATALEN_L,
	CH2DATALEN_M,
	CH3STATE_L,
	CH3STATE_M,
	CH3MEM_SPACE_L,
	CH3MEM_SPACE_M,
	CH3DATALEN_L,
	CH3DATALEN_M,
	CONFIGBITS,

	REG_R_MAX // count of REG_R
};

/*
 * Data of all FPGA Registers
 */
class FpgaRegsData {
public:
	// only one instance
	static FpgaRegsData& instance() {
		static FpgaRegsData _instance;
		return _instance;
	}

	// get data address of reg_w
	unsigned char* getAddrRegW(int offset) {
		if (offset < 0 || offset >= REG_W_MAX) {
			return NULL;
		}
		return &data_w[offset];
	}

	// get data address of reg_r
	unsigned char* getAddrRegR(int offset) {
		if (offset < 0 || offset >= REG_R_MAX) {
			return NULL;
		}
		return &data_r[offset];
	}

	// get data of reg_w
	unsigned char getRegW(int offset) {
		if (offset < 0 || offset >= REG_W_MAX) {
			return 0xFF;
		}
		return data_w[offset];
	}

	// get data of reg_r
	unsigned char getRegR(int offset) {
		if (offset < 0 || offset >= REG_R_MAX) {
			return 0xFF;
		}
		return data_r[offset];
	}

	// set data of reg_w
	void setRegW(int offset, unsigned char val) {
		if (offset < 0 || offset >= REG_W_MAX) {
			return;
		}
		data_w[offset] = val;
	}

	// set data of reg_r
	void setRegR(int offset, unsigned char val) {
		if (offset < 0 || offset >= REG_R_MAX) {
			return;
		}
		data_r[offset] = val;
	}

private:
	// prevent instantiation
	FpgaRegsData() {
		memset(data_w, 0, sizeof(data_w));
		memset(data_r, 0, sizeof(data_r));
	}

	unsigned char data_w[REG_W_MAX];
	unsigned char data_r[REG_R_MAX];
};

#pragma pack(pop)

#endif /* CPUFPGATOOLDEFS_H_ */
