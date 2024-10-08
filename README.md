# ESP32 Fancontroller

ESP32-based PWM Fancontroller with integrated Temperature & Humdity Sensor.

## Installation

https://zeroflow.github.io/esphome-fancontroller/

## Specs

* 12V DC Barrel Input (5.5x2.1mm)
* 4x PWM Fan Output
* Integrated HDC1080 Temperature & Humidity Sensor
* I2C Expansion Port
* 3 User Buttons
* 2 External Digital Inputs (Pull-Up included)

![view of the board](static/board.jpg)

## 3D printed case

TBD

## Tindie

Buy boards & cases at https://www.tindie.com/products/zeroflow/esp32-fancontroller/

## Pin Configuration

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
GPIO16 | Fan 4 Sense
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