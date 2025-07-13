# ESP32 Fancontroller

ESP32-based PWM Fancontroller with integrated Temperature & Humdity Sensor.

## Specification

* Basics
  * 12V DC Barrel Input (5.5x2.1mm)
  * 4x PWM Fan Output
* Sensors & IO
  * Integrated HDC1080 Temperature & Humidity Sensor
  * [Qwiic](https://www.sparkfun.com/qwiic) Expansion Port
  * I2C Expansion Port (2.54mm Header)
  * Neopixel Port
  * 3 User Buttons
  * GPIO Expansion Pads (2.54mm SMD Header)

![view of the board](static/board_rev3.0.jpg)

## 3D printed case

[Wifi Fancontroller Case](https://www.printables.com/model/987263-wifi-fancontroller-case) on Printables.com

## Tindie

Buy boards & cases at https://www.tindie.com/products/zeroflow/esp32-fancontroller/

## Installation

> **Warning**
> This section is a work in progress. If you need assistance, please contact me on Github or on Tindie.

The boards come pre-flashed with an ESPHome factory image.
There are many ways to install your own firmware, but the most common will be USB, OTA (upload) or OTA (Adoption).

Always pick the correct configuration for your board revision.
To distinguish the boards inside the case, the following scheme can be used:

Revision | Left       | Right   | Details
---- | -------------- | ------- | ----
1.0  | DC 12V         | nothing | [Link](/static/fancontroller-rev1.0.md)
2.0  | DC 12V         | USB-C   | [Link](/static/fancontroller-rev2.0.md)
3.0  | DC 12V & QWIIC | USB-C   | [Link](/static/fancontroller-rev3.0.md)

### Preparation of Config

* Create a new device in your ESPHome installation
* Merge content of template (e.g. [fancontroller-rev3.0-esp32s2.yaml](/fancontroller-rev3.0-esp32s2.yaml)) into your generated config, preserving the generated header
  * Keep your generated key inside ```api:``` and ```ota:```

### USB Installation

* Create the config as noted above
* Connect your board to the computer
* Hold down Boot and press Reset to go into Download Mode
* Click Install -> Plug into this computer 
* Select your ESP32S2's COM port
* Click "Connect"

### OTA - Upload Installation

* Create the config as noted above
* Click Install -> Manual Download
* The firmware will now be built
* Download "OTA format"
* Connect the board to power (USB-C or DC 12V)
* A new WiFi network will be visible (e.g. ```fancontroller-r3-abcdef```)
* Connect to this WiFi network
* Upload the file you just downloaded at the bottom of the page under "OTA"
* The board will now reboot and be visible in ESPHome

### OTA - Adoption Installation

* Connect the board to power (USB-C or DC 12V)
* A new WiFi network will be visible (e.g. ```fancontroller-r3-abcdef```)
* Connect to this WiFi network
* Select your WiFi and input credentials
* Your board will now show up in ESPHome
* Update the blank configuration with the steps of "Preparation of Config" above
* Upload via Install -> Wirelessly