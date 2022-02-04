# SPDX-License-Identifier: GPL-3.0-only

LVFS_DEVICE_ID = com.system76.darp7.ec.firmware
LVFS_DEVICE_NAME = "Darter Pro 7"
# TODO
LVFS_DEVICE_UUID = "00000000-0000-0000-0000-000000000000"

EC=it5570e

# Enable eSPI
CFLAGS+=-DEC_ESPI=1

# Include keyboard
KEYBOARD=15in_102

# Set keyboard LED mechanism
KBLED=rgb_pwm

# Set battery I2C bus
CFLAGS+=-DI2C_SMBUS=I2C_4

# Set touchpad PS2 bus
CFLAGS+=-DPS2_TOUCHPAD=PS2_3

# Set smart charger parameters
#TODO: Find out why input current must by divided by two
CFLAGS+=\
	-DCHARGER_CHARGE_CURRENT=1536 \
	-DCHARGER_CHARGE_VOLTAGE=8800 \
	-DCHARGER_INPUT_CURRENT=1600

# Add system76 common code
include src/board/system76/common/common.mk
