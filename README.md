# WiFi Fan Controller

**Smart fan control for your Home Assistant setup**

A CE-certified, ESP32-based PWM fan controller designed for home server racks, media cabinets, and smart home projects. Control up to 4 fans with temperature-based automation, remote monitoring, and seamless Home Assistant integration.

![WiFi Fan Controller Board](static/board_rev3.3_front.jpg)

## Why This Fan Controller?

**Intelligent Climate Control**: Automatically adjust fan speeds based on temperature and humidity readings from the integrated HDC1080 sensor. Turn fans off when equipment is idle, ramp up when things heat up.

**Home Assistant Native**: Built on ESPHome for seamless integration with Home Assistant. Monitor temperatures, adjust fan speeds, and create automations directly from your smart home dashboard.

**Hackable & Expandable**: Fully customizable ESPHome configuration with Qwiic and I2C expansion ports, NeoPixel output, user buttons, and GPIO breakouts. Add sensors, displays, or integrate with your existing projects.

**Professional Quality**: CE certified hardware with RGB status LEDs showing system status at a glance. Standard 12V barrel jack power input works with commonly available power supplies.

## Specifications

* **Power**
  * 12V DC Barrel Input (5.5x2.1mm)
  * Low power operation: 0.25W typical, 0.07W deep sleep
* **Fan Control**
  * 4× PWM Fan Outputs with RPM monitoring
  * Supports standard 12V 4-pin PWM fans
* **Sensors & I/O**
  * Integrated HDC1080 Temperature & Humidity Sensor
  * RGB Status LEDs for board and fan ports (Rev 3.x)
  * [Qwiic](https://www.sparkfun.com/qwiic) Expansion Port for easy sensor additions
  * I2C Expansion Port (2.54mm Header)
  * 5V NeoPixel Output Port
  * 3 User Buttons for custom functions
  * GPIO Expansion Pads (2.54mm SMD Header)
* **Connectivity**
  * WiFi (ESP32/ESP32-S2)
  * USB-C for programming and power (Rev 2.0+)

## Get Your Board

**Ready to upgrade your setup?** Boards and 3D-printed cases available at [Elecrow](https://www.elecrow.com/wifi-fancontroller1.html) for $35,99.

**DIY Case**: Print your own case using the [WiFi Fancontroller Case](https://www.printables.com/model/987263-wifi-fancontroller-case) design on Printables.com.

## Quick Start

All boards come pre-flashed with an ESPHome factory image that's ready to use. You can either:

1. **Use the pre-built firmware** - Connect to WiFi and start controlling fans immediately
2. **Flash your own custom configuration** - Full ESPHome customization for advanced users
3. **Use our hardware packages** - Import pre-configured hardware definitions into your ESPHome setup

### Installation Methods

Choose the installation method that works best for you:
- **Web Installer** (easiest) - Flash directly from your browser at [zeroflow.github.io/esphome-fancontroller](https://zeroflow.github.io/esphome-fancontroller/)
- **USB Installation** - Program via USB-C with ESPHome (Rev 2.0+)
- **OTA Updates** - Wireless updates after initial setup

### Identifying Your Board Revision

To choose the correct firmware, identify your board revision using the connectors:

Revision | Left                      | Fan Ports             | Right   | Details | Notes
---- | ----------------------------- | --------------------- | ------- | ------- | ------
1.0  | DC 12V                        | Fans                  | nothing | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev1.0.html) |
2.0  | DC 12V, Status LED            | Fans                  | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev2.0.html) | 
3.0  | DC 12V, Status LED, QWIIC     | Fans                  | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.0.html) |
3.1  | DC 12V, RGB Status LED, QWIIC | Fans, RGB Status LEDs | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.1.html) |
3.2  | DC 12V, RGB Status LED, QWIIC | Fans, RGB Status LEDs | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.2.html) |
3.3  | DC 12V, RGB Status LED, QWIIC | Fans, RGB Status LEDs | USB-C   | [Link](https://zeroflow.github.io/esphome-fancontroller/fancontroller-rev3.3.html) |

---

## Installation Guide

### Option 1: Web Installer (Recommended for Most Users)

The fastest way to get started. Flash pre-built firmware directly from your browser - no software installation required.

**Visit the [Web Installer](https://zeroflow.github.io/esphome-fancontroller/)** and follow the on-screen instructions.

### Option 2: ESPHome Hardware Packages

For users who want to customize their configuration while keeping hardware setup simple. The hardware packages automatically configure all board-specific features for your revision.

This works by adding the following lines to your esphome config:

```yaml
# Import the hardware package for your board revision
packages:
  fancontroller: github://zeroflow/esphome-fancontroller/hardware-rev-3.3.yaml@main
```

#### Example Configuration

Here's a complete example showing how to create a custom configuration using the hardware package:

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

#### What's Included in Hardware Packages

The hardware package automatically configures all board features:
- 4× PWM fan outputs with speed control and RPM monitoring
- HDC1080 temperature & humidity sensor
- User buttons (USR1, USR2, USR3) for custom functions
- Status LEDs (RGB on Rev 3.x)
- NeoPixel output port (Rev 3.x)
- WiFi signal strength sensor
- All expansion ports and GPIO

No manual pin configuration needed - just import the package and customize your automations!

---

## Advanced Installation Methods

### Option 3: ESPHome Web Installation (Manual Build)

For advanced users who want to build their own custom firmware.

* Create your own configuration as described above
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

> **Tip**: Press F12 to open the developer console and view detailed installation progress.

### Option 4: USB Installation via ESPHome CLI

Requires ESPHome CLI installed locally with valid SSL certificate for WebSerial communication.

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

> **Tip**: Press F12 to open the developer console and view detailed installation progress.

### Option 5: OTA Upload (Wireless Update)

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

### Option 6: OTA Adoption (Initial WiFi Setup)

Use this method to connect a factory-fresh board to your WiFi network before customizing.

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

---

## Ongoing Updates & Troubleshooting

**Over-the-Air Updates**: After initial setup, your board will appear in the ESPHome dashboard for wireless updates. No need to connect USB again.

**Troubleshooting Discovery Issues**: If your board doesn't appear in ESPHome after connecting to WiFi, check for mDNS issues on your network. You can work around this by manually specifying the board's IP address using the [manual_ip](https://esphome.io/components/wifi.html) configuration in your WiFi settings.

**Need Help?** Open an issue on [GitHub](https://github.com/zeroflow/esphome-fancontroller/issues) or consult the ESPHome documentation.

---

## Resources

- **Web Installer**: [zeroflow.github.io/esphome-fancontroller](https://zeroflow.github.io/esphome-fancontroller/)
- **Purchase**: [Elecrow Store](https://www.elecrow.com/wifi-fancontroller1.html) - $35,99
- **3D Printable Case**: [Printables.com](https://www.printables.com/model/987263-wifi-fancontroller-case)
- **Hardware Packages**: Available in this repository under `hardware-rev-*.yaml`
- **ESPHome Documentation**: [esphome.io](https://esphome.io/)
- **Home Assistant**: [home-assistant.io](https://home-assistant.io/)

## Contributing

Found a bug or have a feature request? Open an issue or submit a pull request on [GitHub](https://github.com/zeroflow/esphome-fancontroller).
