MCU=atmega328p
KEYBOARD=3w6/rev2
KEYMAP=default
all:
	qmk compile -kb ${KEYBOARD} -km ${KEYMAP}
flash:
	avrdude -p ${MCU} -c arduino -U flash:w:/root/qmk_firmware/3w6_rev2_default.hex:i -F -P /dev/ttyACM0
clean:
	rm -f *.bin *.hex
