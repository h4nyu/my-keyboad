MCU=atmega32u4
KEYBOARD=3w6/rev2
KEYMAP=default
all:
	qmk compile -kb ${KEYBOARD} -km ${KEYMAP}
flash:
	avrdude -p ${MCU} -c arduino -U flash:w:/root/qmk_firmware/3w6_rev2_default.hex:i -P /dev/ttyACM0
clean:
	rm -f *.bin *.hex
