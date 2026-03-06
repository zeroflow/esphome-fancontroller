---
layout: single
title: "Fancontroller Rev 2.0"
excerpt: "USB-C flashing support with ESP32-S2"
header:
  overlay_image: /board_rev2.0.jpg
  overlay_filter: 0.5
  caption: "ESP32-S2 | 4× PWM Fans | USB-C | HDC1080 Sensor | I2C Expansion"
  teaser: /board_rev2.0.jpg
toc: true
toc_label: "Rev 2.0 Contents"
toc_icon: "microchip"
---

## Description

* Main Controller
  * ESP32S2-Mini-2
* Onboard
  * DC Input (12V, 5.5x2.1mm)
  * USB-C port for flashing
  * 4× FAN PWM Header
  * Status LED (red)
  * HDC1080 Temperature & Humidity sensor
* IO
  * Reset / Boot Buttons
  * 3× User Buttons
  * I2C Expansion Port (100mil, SCL, SDA & Int)

## Factory Firmware Installation

<esp-web-install-button manifest="firmware/fancontroller-r2-0.manifest.json"></esp-web-install-button>

<details>
<summary>⚠️ USB flashing not working? (ESP32-S2 known issue)</summary>
<p>The ESP32-S2 has known USB reliability issues — there is no permanent fix. If the browser installer fails, use <a href="https://esptool.spacehuhn.com/">ESPWEBTOOL by Spacehuhn</a> as a fallback:</p>
<ol>
<li>Connect the board via USB-C</li>
<li>Hold BOOT, press RESET to enter boot mode</li>
<li>Click "Connect" in ESPWEBTOOL</li>
<li>Remove all flash entries except one</li>
<li>Flash the <code>.bin</code> file at address <code>0x0</code></li>
</ol>
<p>Alternatively, use <a href="https://github.com/espressif/esptool">esptool</a> from the command line: <code>esptool.py --chip esp32s2 write_flash 0x0 firmware.bin</code></p>
<p><a href="/firmware/fancontroller-r2-0-esp32s2.factory.bin">Download prebuilt binary</a></p>
</details>

## Example Configurations

This board uses a modular package-based configuration system. Check out these examples to get started:

- **[Basic Configuration](https://github.com/zeroflow/wifi-fancontroller/blob/main/examples/basic-rev-2.0.yaml)** - Minimal setup with 4 fans and essential features

For more examples and advanced features, see the [examples directory](https://github.com/zeroflow/wifi-fancontroller/tree/main/examples).

## Board

![view of the board](board_rev2.0.jpg)

## ESP32S2 Pin Assignment

Pin    | Usage
------ | ------
GPIO0  | Boot Button, Push to enter flashing mode
GPIO1  | Builtin LED, Low=On
GPIO2  | unused
GPIO3  | unused
GPIO4  | unused
GPIO5  | unused
GPIO6  | unused
GPIO7  | unused
GPIO8  | unused
GPIO9  | unused
GPIO10 | unused
GPIO11 | unused
GPIO12 | Fan 1 PWM
GPIO13 | Fan 1 Sense
GPIO14 | Fan 2 PWM
GPIO15 | Fan 2 Speed Sense
GPIO16 | Fan 3 PWM
GPIO17 | Fan 3 Speed Sense
GPIO18 | Fan 4 PWM
GPIO21 | Fan 4 Speed Sense
GPIO26 | unused
GPIO33 | unused
GPIO34 | unused
GPIO35 | unused
GPIO36 | unused
GPIO37 | unused
GPIO38 | unused
GPIO39 | unused
GPIO40 | unused
GPIO41 | unused
GPIO42 | unused
GPIO45 | unused (strapping)
GPIO46 | unused (strapping)

### I2C extension port

The board offers an I2C extension port above Fan 4.

Nr. | Pin -| Description
----|------|------------
1   | GND  | 
2   | INT  | GPIO 35
3   | SCL  | GPIO 34, 4.7k Pull-Up
4   | SDA  | GPIO 33, 4.7k Pull-Up
5   | +3V3 |

<script type="module" src="https://unpkg.com/esp-web-tools@8.0.6/dist/web/install-button.js?module"></script>