---
layout: splash
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /board_rev3.3_front.jpg
  actions:
    - label: "Buy Now - $35"
      url: "https://www.elecrow.com/wifi-fancontroller1.html"
    - label: "View on GitHub"
      url: "https://github.com/zeroflow/esphome-fancontroller"
  caption: "CE-certified ESP32 Fan Controller"
excerpt: "**Smart fan control for your Home Assistant setup**<br/>Control up to 4 fans with temperature-based automation, remote monitoring, and seamless Home Assistant integration."

intro:
  - excerpt: "A CE-certified, ESP32-based PWM fan controller designed for home server racks, media cabinets, and smart home projects. Flash pre-built firmware directly from your browser - get started in minutes."

feature_row_why:
  - image_path: board_rev3.3_front.jpg
    title: "Intelligent Climate Control"
    excerpt: "Automatically adjust fan speeds based on temperature and humidity readings from the integrated HDC1080 sensor. Turn fans off when equipment is idle, ramp up when things heat up."
  - image_path: board_rev3.3_front.jpg
    title: "Home Assistant Native"
    excerpt: "Built on ESPHome for seamless integration with Home Assistant. Monitor temperatures, adjust fan speeds, and create automations directly from your smart home dashboard."
  - image_path: board_rev3.3_front.jpg
    title: "Hackable & Expandable"
    excerpt: "Fully customizable ESPHome configuration with Qwiic and I2C expansion ports, NeoPixel output, user buttons, and GPIO breakouts. Add sensors, displays, or integrate with your existing projects."

feature_row_specs:
  - title: "4× PWM Fan Outputs"
    excerpt: "with RPM monitoring"
  - title: "Built-in HDC1080"
    excerpt: "temperature & humidity sensor"
  - title: "RGB Status LEDs"
    excerpt: "for board and fan port status (Rev 3.x)"
  - title: "Qwiic & I2C Expansion"
    excerpt: "for additional sensors"
  - title: "USB-C Flashing"
    excerpt: "no programming adapter needed (Rev 2.0+)"
  - title: "WiFi OTA Updates"
    excerpt: "via ESPHome"
  - title: "3 User Buttons"
    excerpt: "for custom functions"
  - title: "Low Power"
    excerpt: "only 0.25W typical operation"

feature_row_rev3:
  - image_path: board_rev3.3_front.jpg
    title: "Rev 3.1, 3.2, 3.3 - Latest Generation"
    excerpt: "RGB status LEDs, enhanced signal integrity, improved USB resilience, and full expansion capabilities. Revisions 3.2 and 3.3 include minor component upgrades.<br/><br/><esp-web-install-button manifest=\"firmware/fancontroller-r3-1.manifest.json\"></esp-web-install-button><br/><br/>[Rev 3.1 Specs](fancontroller-rev3.1) | [Rev 3.2 Specs](fancontroller-rev3.2) | [Rev 3.3 Specs](fancontroller-rev3.3)"
    url: "fancontroller-rev3.3"
    btn_label: "Learn More"
    btn_class: "btn--primary"

feature_row_rev30:
  - image_path: board_rev3.0.jpg
    title: "Rev 3.0 - Expansion Focus"
    excerpt: "Added Qwiic I2C port, 5V NeoPixel output, and GPIO expansion header for maximum hackability.<br/><br/><esp-web-install-button manifest=\"firmware/fancontroller-r3-0.manifest.json\"></esp-web-install-button>"
    url: "fancontroller-rev3.0"
    btn_label: "Learn More"
    btn_class: "btn--primary"

feature_row_rev2:
  - image_path: board_rev2.0.jpg
    title: "Rev 2.0 - USB-C"
    excerpt: "Upgraded to ESP32-S2 with USB-C flashing support, eliminating the need for serial programming adapters.<br/><br/><esp-web-install-button manifest=\"firmware/fancontroller-r2-0.manifest.json\"></esp-web-install-button>"
    url: "fancontroller-rev2.0"
    btn_label: "Learn More"
    btn_class: "btn--primary"

feature_row_rev1:
  - image_path: board_rev1.0.jpg
    title: "Rev 1.0 - Original"
    excerpt: "First generation design with ESP32. Requires programming header or SOCbite connector for flashing.<br/><br/><esp-web-install-button manifest=\"firmware/fancontroller-r1-0.manifest.json\"></esp-web-install-button>"
    url: "fancontroller-rev1.0"
    btn_label: "Learn More"
    btn_class: "btn--primary"
---

{% include feature_row id="intro" type="center" %}

## Why This Fan Controller?

{% include feature_row id="feature_row_why" %}

## Key Features

{% include feature_row id="feature_row_specs" type="center" %}

## Get Started in Minutes

Flash pre-built firmware directly from your browser. Connect your board via USB-C and click the button for your hardware revision below.

## Hardware Revisions

{% include feature_row id="feature_row_rev3" type="left" %}

{% include feature_row id="feature_row_rev30" type="left" %}

{% include feature_row id="feature_row_rev2" type="left" %}

{% include feature_row id="feature_row_rev1" type="left" %}

---

## Get Your Board

**Ready to upgrade your setup?** Boards and 3D-printed cases available at [Elecrow](https://www.elecrow.com/wifi-fancontroller1.html) for $35.

**Open Source**: Full documentation, hardware configurations, and ESPHome packages available on [GitHub](https://github.com/zeroflow/esphome-fancontroller). Create custom automations and share your configurations with the community.

**Need Help?** Check the [documentation](https://github.com/zeroflow/esphome-fancontroller#readme) or open an issue on GitHub.

<script type="module" src="https://unpkg.com/esp-web-tools@10/dist/web/install-button.js?module"></script>
