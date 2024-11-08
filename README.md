# ESP32 Fancontroller

ESP32-based PWM Fancontroller with integrated Temperature & Humdity Sensor.

## Installation

Rev 1.0 (ESP32): https://zeroflow.github.io/esphome-fancontroller/
Rev 2.0 (ESP32-S2): Follow Guide below

## Specs

* 12V DC Barrel Input (5.5x2.1mm)
* 4x PWM Fan Output
* Integrated HDC1080 Temperature & Humidity Sensor
* I2C Expansion Port
* 3 User Buttons

![view of the board](static/board_rev2.0.jpg)

## 3D printed case

TBD

## Tindie

Buy boards & cases at https://www.tindie.com/products/zeroflow/esp32-fancontroller/

## ESP32-S2 (Rev 2.0)

### USB Flashing

Currently, there are [known issues](https://github.com/espressif/esptool-js/issues/38) with flashing the ESP32-S2 with esptool.js. Thus, flashing with the normal python [esptool](https://github.com/espressif/esptool) is necessary.

To do this:

1. Add new board config to your esphome instance
2. Click "Install"
3. Select "Manual Download"
4. Download "Factory Format"
5. Upload binary to esp32s2 (e.g. ```python -m esptool --chip esp32s2 --port COMn write_flash 0x0 wifi-fancontroller-s2.factory.bin```)

### Pin Configuration

Pin    | Usage
------ | ------
GPIO0  | Boot Button, Push to enter flashing mode
GPIO1  | Builtin LED, Low=On
GPIO12 | Fan 1 PWM
GPIO13 | Fan 1 Sense
GPIO14 | Fan 2 PWM
GPIO15 | Fan 2 Speed Sense
GPIO16 | Fan 3 PWM
GPIO17 | Fan 3 Speed Sense
GPIO18 | Fan 4 PWM
GPIO21 | Fan 4 Speed Sense

### I2C extension port

The board offers an I2C extension port above Fan 4.

Nr. | Pin -| Description
----|------|------------
1   | GND  | 
2   | INT  | GPIO 35
3   | SCL  | GPIO 34, 4.7k PU
4   | SDA  | GPIO 33, 4.7k PU
5   | +3V3 |

## ESP32 (Rev 1.0)

### Pin Configuration

Pin    | Usage
------ | ------
GPIO0  | Boot Button, Push to enter flashing mode
GPIO1  | Serial TX
GPIO2  | Builtin LED, Low=On
GPIO3  | Serial RX
GPIO4  | Fan 4 PWM
GPIO5  | Unused (strapping pin)
GPIO12 | Unused (strapping pin)
GPIO13 | Fan 3 Speed Sense
GPIO14 | Unused (outputs PWM at boot)
GPIO15 | Unused (outputs PWM at boot, strapping pin)
GPIO16 | Fan 4 Speed Sense
GPIO17 | I2C SDA (HDC1080 + expansion header)
GPIO18 | I2C SCL (HDC1080 + expansion header)
GPIO19 | I2C INT (expansion header)
GPIO21 | User Button 3
GPIO22 | User Button 2
GPIO23 | User Button 1
GPIO25 | Fan 2 PWM
GPIO26 | Fan 2 Speed Sense
GPIO27 | Fan 3 PWM
GPIO32 | Fan 1 PWM
GPIO33 | Fan 1 Sense
GPIO34 | External Input 1
GPIO35 | External Input 2
GPIO36 | Unused
GPIO39 | Unused

### I2C extension port

The board offers an I2C extension port above Fan 4.

Nr. | Pin -| Description
----|------|------------
1   | GND  | 
2   | INT  | GPIO 19
3   | SCL  | GPIO 18, 4.7k PU
4   | SDA  | GPIO 17, 4.7k PU
5   | +3V3 |

### External Input

The board offers two external inputs, e.g. for a door intrusion alarm or a 100% power switch.

Nr. | Pin -| Description
----|------|------------
1   | GND  | 
2   | IN2  | 10k PU
3   | IN1  | 10k PU