# WiFi Fan Controller

**Smart fan control for your Home Assistant setup**

A CE-certified, ESP32-based PWM fan controller designed for home server racks, media cabinets, and smart home projects. Control up to 4 fans with temperature-based automation, remote monitoring, and seamless Home Assistant integration.

![WiFi Fan Controller Board](board_rev3.3_front.jpg)

## Why This Fan Controller?

**Intelligent Climate Control**: Automatically adjust fan speeds based on temperature and humidity readings from the integrated HDC1080 sensor. Turn fans off when equipment is idle, ramp up when things heat up.

**Home Assistant Native**: Built on ESPHome for seamless integration with Home Assistant. Monitor temperatures, adjust fan speeds, and create automations directly from your smart home dashboard.

**Hackable & Expandable**: Fully customizable ESPHome configuration with Qwiic and I2C expansion ports, NeoPixel output, user buttons, and GPIO breakouts. Add sensors, displays, or integrate with your existing projects.

**Professional Quality**: CE certified hardware with RGB status LEDs showing system status at a glance. Standard 12V barrel jack power input works with commonly available power supplies.

## Key Features

* **4× PWM Fan Outputs** with RPM monitoring
* **Built-in HDC1080** temperature & humidity sensor
* **RGB Status LEDs** for board and fan port status (Rev 3.x)
* **Qwiic & I2C Expansion** for additional sensors
* **USB-C Flashing** - no programming adapter needed (Rev 2.0+)
* **WiFi OTA Updates** via ESPHome
* **3 User Buttons** for custom functions
* **Low Power** - only 0.25W typical operation

## Get Started in Minutes

Flash pre-built firmware directly from your browser. Connect your board via USB-C and click the button for your hardware revision below.

## Hardware Revisions

### Rev 3.1, 3.2, 3.3 - Latest Generation (Recommended)

RGB status LEDs, enhanced signal integrity, improved USB resilience, and full expansion capabilities. Revisions 3.2 and 3.3 include minor component upgrades.

<esp-web-install-button manifest="firmware/fancontroller-r3-1.manifest.json"></esp-web-install-button>

[Detailed specs: Rev 3.1](fancontroller-rev3.1.md) | [Rev 3.2](fancontroller-rev3.2.md) | [Rev 3.3](fancontroller-rev3.3.md)

---

### Rev 3.0 - Expansion Focus

Added Qwiic I2C port, 5V NeoPixel output, and GPIO expansion header for maximum hackability.

<esp-web-install-button manifest="firmware/fancontroller-r3-0.manifest.json"></esp-web-install-button>

[Detailed specs](fancontroller-rev3.0.md)

---

### Rev 2.0 - USB-C

Upgraded to ESP32-S2 with USB-C flashing support, eliminating the need for serial programming adapters.

<esp-web-install-button manifest="firmware/fancontroller-r2-0.manifest.json"></esp-web-install-button>

[Detailed specs](fancontroller-rev2.0.md)

---

### Rev 1.0 - Original

First generation design with ESP32. Requires programming header or SOCbite connector for flashing.

<esp-web-install-button manifest="firmware/fancontroller-r1-0.manifest.json"></esp-web-install-button>

[Detailed specs](fancontroller-rev1.0.md)

---

## Get Your Board

**Ready to upgrade your setup?** Boards and 3D-printed cases available at [Elecrow](https://www.elecrow.com/wifi-fancontroller1.html) for $35.

**Open Source**: Full documentation, hardware configurations, and ESPHome packages available on [GitHub](https://github.com/zeroflow/esphome-fancontroller). Create custom automations and share your configurations with the community.

**Need Help?** Check the [documentation](https://github.com/zeroflow/esphome-fancontroller#readme) or open an issue on GitHub.

<script type="module" src="https://unpkg.com/esp-web-tools@10/dist/web/install-button.js?module"></script>
