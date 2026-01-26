# ESP32 Fancontroller

ESP32-based PWM Fancontroller with integrated Temperature & Humidity Sensor.

## Specification

* Basics
  * 12V DC Barrel Input (5.5x2.1mm)
  * 4x PWM Fan Output
* Sensors & IO
  * Integrated HDC1080 Temperature & Humidity Sensor
  * RGB Status LEDs (Board + Fans)
  * [Qwiic](https://www.sparkfun.com/qwiic) Expansion Port
  * I2C Expansion Port (2.54mm Header)
  * Neopixel Port
  * 3 User Buttons
  * GPIO Expansion Pads (2.54mm SMD Header)

![view of the board](static/board_rev3.3_front.jpg)

## 3D printed case

[Wifi Fancontroller Case](https://www.printables.com/model/987263-wifi-fancontroller-case) on Printables.com

## Purchase a board

Buy boards & cases on [Elecrow](https://www.elecrow.com/wifi-fancontroller1.html)

## Installation

> **Warning**
> This section is a work in progress. If you need assistance, please contact me on Github or on Tindie.

The boards come pre-flashed with an ESPHome factory image.
There are many ways to install your own firmware, but the most common will be USB, OTA (upload) or OTA (Adoption).

Always pick the correct configuration for your board revision.
To distinguish the boards inside the case, the following scheme can be used:

Revision | Left                      | Fan Ports             | Right   | Details | Notes
---- | ----------------------------- | --------------------- | ------- | ------- | ------
1.0  | DC 12V                        | Fans                  | nothing | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev1.0.html) |
2.0  | DC 12V, Status LED            | Fans                  | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev2.0.html) | 
3.0  | DC 12V, Status LED, QWIIC     | Fans                  | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.0.html) |
3.1  | DC 12V, RGB Status LED, QWIIC | Fans, RGB Status LEDs | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.1.html) |
3.2  | DC 12V, RGB Status LED, QWIIC | Fans, RGB Status LEDs | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.2.html) |
3.3  | DC 12V, RGB Status LED, QWIIC | Fans, RGB Status LEDs | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.3.html) |

### Installation of prebuilt config via Web-UI

Controllers can be flashed with a default firmware via the [Installer on GitHub Pages](https://zeroflow.github.io/esphome-fancontroller/)

### Using the ESPHome Package Configuration

The easiest way to configure your fan controller is to use the pre-built hardware packages. This automatically includes all hardware-specific configuration for your board revision.

This works by adding the following lines to your esphome config:

```yaml
# Import the hardware package for your board revision
packages:
  fancontroller: github://zeroflow/esphome-fancontroller/hardware-rev-3.3.yaml@main
```

#### Create a new ESPHome configuration:

```yaml
# Import the hardware package for your board revision
packages:
  fancontroller: github://zeroflow/esphome-fancontroller/hardware-rev-3.3.yaml@main

esphome:
  name: my-fancontroller
  friendly_name: My Fan Controller

esp32:
  board: esp32-s2-saola-1  # Use esp32dev for Rev 1.0
  framework:
    type: arduino

# Enable logging
logger:

# Enable Home Assistant API
api:

# Enable OTA updates
ota:
  - platform: esphome

# Configure your WiFi
wifi:
  ssid: !secret wifi_ssid
  password: !secret wifi_password

  # Enable fallback hotspot
  ap: {}

captive_portal:
```

#### Available hardware packages:

- **Rev 1.0:** `hardware-rev-1.0.yaml` (ESP32, esp32dev board)
- **Rev 2.0:** `hardware-rev-2.0.yaml` (ESP32-S2, esp32-s2-saola-1 board)
- **Rev 3.0:** `hardware-rev-3.0.yaml` (ESP32-S2, esp32-s2-saola-1 board)
- **Rev 3.1, 3.2, 3.3:** `hardware-rev-3.3.yaml` (ESP32-S2, esp32-s2-saola-1 board)

#### What's included in the package:

The hardware package automatically configures:
- All 4 PWM fan outputs with speed control
- Fan RPM monitoring for all 4 fans
- HDC1080 temperature & humidity sensor
- User buttons (USR1, USR2, USR3)
- Status LEDs (Rev 3.x includes RGB LEDs)
- NeoPixel output (Rev 3.x)
- WiFi signal strength sensor

No manual merging required!

### ESPHome Web Installation

* Create your own config as noted above
* Click Install -> Manual Download
* The firmware will now be built, this may take some time
* Download "Factory format"
* Open [ESPHome Web](https://web.esphome.io/)
* Connect your board to the computer via USB-C
* The board will light up in default mode: Green Status LED, running LEDs at fan port
* Hold down Boot and press Reset to go into Download Mode
* Click "Connect"
* Select ```ESP32-S2 COMx```
* Click "Install"
* Select the file you downloaded ```*.factory.bin```
* Click "Install"
* Wait for installation to finish
* Press the reset button to boot into your software

> If you want to see progress, press F12 for the developer menu and select the "Console" tab. ESPhome will output log messages there.

### USB Installation

> For USB Installation, you need to have esphome installed with a valid ssh certificate, as this is needed for WebSerial installation.

* Create your own config as noted above
* Connect your board to the computer via USB-C
* The board will light up in default mode: Green Status LED, running LEDs at fan port
* Hold down Boot and press Reset to go into Download Mode
* Click Install -> Plug into this computer 
* Select ```ESP32-S2 COMx```
* Click "Connect"
* The firmware will now be built, this may take some time
* Wait for installation to finish
* Press the reset button to boot into your software

> If you want to see progress, press F12 for the developer menu and select the "Console" tab. ESPhome will output log messages there.

### OTA - Upload Installation

* Create your own config as noted above
* Click Install -> Manual Download
* The firmware will now be built, this may take some time
* Download "OTA format"
* Connect the board to power (USB-C or DC 12V)
* The board will light up in default mode: Green Status LED, running LEDs at fan port
* A new WiFi network will be visible (e.g. ```fancontroller-r3-1-abcdef```)
* Connect to this WiFi network
* Typically, the captive portal will be loaded automatically
  * If not, navigate to [192.168.4.1](http://192.168.4.1)
* Select the file you just downloaded at the bottom of the page under "OTA Update"
* Click "Update"
* The board will now reboot and be visible in ESPHome

### OTA - Adoption Installation

> This method is the most complicated one.

* Connect the board to power (USB-C or DC 12V)
* The board will light up in default mode: Green Status LED, running LEDs at fan port
* A new WiFi network will be visible (e.g. ```fancontroller-r3-1-abcdef```)
* Connect to this WiFi network
* Typically, the captive portal will be loaded automatically
  * On Android, the system may ask you to stay connected to a WiFi without internet access
  * If not, navigate to [192.168.4.1](http://192.168.4.1)
* Select your WiFi and input the password
* Click "Save"
* If successful, the LEDs behind the fan ports will change to green.
* The board will now connect to your wifi. Use your method of discovery to find the IP address, access the web UI and flash a new config via OTA upload.

## Power Draw

The power usage of the device is dominated by the fans.
As a standalone device, these are the measured power figures in different operation modes.

Mode | Power Draw
---- | ----------
Active Wifi Transfer (e.g. OTA Upload) | 0.6W
Wifi connected, power save mode deactivated (not default) | 0.52W
```Default``` Wifi connected, LEDs showing status (one-colored) | 0.25W
Wifi connected, LEDs off | 0.2W
Deep Sleep | 0.07W

Disabling Wifi while not in deep sleep does not reduce power consumption, as the default light power save mode already does a good job.

These values have been measured via a DPS3005 power supply, therefore, their accuracy cannot be guaranteed.

## Further updates

After the initial programming, the board should become available in the ESPHome Web UI. If this is not the case, check for general network or mDNS issues. If the device correctly connects to your Wifi, you may be able to work around mDNS issues by manually specifying [manual_ip:](https://esphome.io/components/wifi.html) inside the wifi settings to manually point ESPHome to the correct IP address.
