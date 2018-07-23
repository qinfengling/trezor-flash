# Program script for Trezor One
BL_NAME = bootloader

SWD_PARAM = -c "transport select swd" 
CHIP_PARAM = -f target/stm32f2x.cfg
PROGRAM_PARAM = -c "init; reset halt; flash write_image erase $(BL_NAME).bin 0x8000000; exit"

flash_jlink: $(BL_NAME).bin
	openocd -f interface/jlink.cfg $(SWD_PARAM) $(CHIP_PARAM) $(PROGRAM_PARAM)
