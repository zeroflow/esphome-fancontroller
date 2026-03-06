---
layout: splash
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /board_rev3.3_front.jpg
  actions:
    - label: "Buy Now - $35.99"
      url: "https://www.elecrow.com/wifi-fancontroller1.html"
    - label: "View on GitHub"
      url: "https://github.com/zeroflow/wifi-fancontroller"
  caption: "CE-certified WiFi Fan Controller"
excerpt: "**Smart fan control for your Home Assistant setup**<br/>Control up to 4 fans with temperature-based automation, remote monitoring, and seamless Home Assistant integration."

feature_row_rev3:
  - image_path: board_rev3.3_front.jpg
    title: "Rev 3.1, 3.2, 3.3 - Latest Generation"
    excerpt: "RGB status LEDs, enhanced signal integrity, improved USB resilience, and full expansion capabilities. Revisions 3.2 and 3.3 include minor component upgrades.<br/><br/>This firmware is compatible with Rev 3.1, 3.2, and 3.3.<br/><br/><esp-web-install-button manifest=\"firmware/fancontroller-r3-1.manifest.json\"></esp-web-install-button><br/><br/>⚠️ USB flashing has known issues on the ESP32-S2 - there is no permanent fix. If the browser installer fails, download the <a href=\"https://fancontroller.arthofer.dev/firmware/fancontroller-r3-3-esp32s2.factory.bin\">factory firmware</a> and use <a href=\"https://esptool.spacehuhn.com/\">ESPWEBTOOL by Spacehuhn</a> as a fallback."
    url: "fancontroller-rev3.3"
    btn_label: "Learn More (Rev 3.3)"
    btn_class: "btn--primary"

feature_row_rev30:
  - image_path: board_rev3.0.jpg
    title: "Rev 3.0 - Expansion Focus"
    excerpt: "Added Qwiic I2C port, 5V NeoPixel output, and GPIO expansion header for maximum hackability.<br/><br/><esp-web-install-button manifest=\"firmware/fancontroller-r3-0.manifest.json\"></esp-web-install-button><br/><br/>⚠️ USB flashing has known issues on the ESP32-S2 - there is no permanent fix. If the browser installer fails, download the <a href=\"https://fancontroller.arthofer.dev/firmware/fancontroller-r3-0-esp32s2.factory.bin\">factory firmware</a> and use <a href=\"https://esptool.spacehuhn.com/\">ESPWEBTOOL by Spacehuhn</a> as a fallback."
    url: "fancontroller-rev3.0"
    btn_label: "Learn More"
    btn_class: "btn--primary"

feature_row_rev2:
  - image_path: board_rev2.0.jpg
    title: "Rev 2.0 - USB-C"
    excerpt: "Upgraded to ESP32-S2 with USB-C flashing support, eliminating the need for serial programming adapters.<br/><br/><esp-web-install-button manifest=\"firmware/fancontroller-r2-0.manifest.json\"></esp-web-install-button><br/><br/>⚠️ USB flashing has known issues on the ESP32-S2 - there is no permanent fix. If the browser installer fails, download the <a href=\"https://fancontroller.arthofer.dev/firmware/fancontroller-r2-0-esp32s2.factory.bin\">factory firmware</a> and use <a href=\"https://esptool.spacehuhn.com/\">ESPWEBTOOL by Spacehuhn</a> as a fallback."
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

A CE-certified, ESP32-based PWM fan controller designed for home server racks, media cabinets, and smart home projects. Flash pre-built firmware directly from your browser - get started in minutes.

## Why This Fan Controller?

<div class="feature-grid" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 2em; margin: 2em 0;">
  <div style="text-align: center;">
    <i class="fa-solid fa-temperature-half fa-3x" aria-hidden="true"></i>
    <h3>Intelligent Climate Control</h3>
    <p>Automatically adjust fan speeds based on temperature and humidity readings from the integrated HDC1080 sensor. Turn fans off when equipment is idle, ramp up when things heat up.</p>
  </div>
  <div style="text-align: center;">
    <i class="fa-solid fa-house fa-3x" aria-hidden="true"></i>
    <h3>Home Assistant Native</h3>
    <p>Built on ESPHome for seamless integration with Home Assistant. Monitor temperatures, adjust fan speeds, and create automations directly from your smart home dashboard.</p>
  </div>
  <div style="text-align: center;">
    <i class="fa-solid fa-screwdriver-wrench fa-3x" aria-hidden="true"></i>
    <h3>Hackable & Expandable</h3>
    <p>Fully customizable ESPHome configuration with Qwiic and I2C expansion ports, NeoPixel output, user buttons, and GPIO breakouts. Add sensors, displays, or integrate with your existing projects.</p>
  </div>
</div>

## Key Features

<div class="feature-grid" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 1.5em; margin: 2em 0;">
  <div><i class="fa-solid fa-fan"></i> <strong>4× PWM Fan Outputs</strong><br/>Independent control with RPM monitoring</div>
  <div><i class="fa-solid fa-temperature-half"></i> <strong>Temperature & Humidity Sensor</strong><br/>Integrated HDC1080 for climate monitoring</div>
  <div><i class="fa-solid fa-lightbulb"></i> <strong>RGB Status LEDs</strong><br/>Visual feedback for board and fan status</div>
  <div><i class="fa-solid fa-microchip"></i> <strong>Qwiic & I2C Expansion</strong><br/>Easily add sensors and displays</div>
  <div><i class="fa-brands fa-usb"></i> <strong>USB-C Flashing</strong><br/>Flash firmware directly, no programmer needed</div>
  <div><i class="fa-solid fa-wifi"></i> <strong>Over-the-Air Updates</strong><br/>Update firmware wirelessly via WiFi</div>
  <div><i class="fa-solid fa-hand-pointer"></i> <strong>3 Programmable Buttons</strong><br/>Trigger custom automations</div>
  <div><i class="fa-solid fa-bolt"></i> <strong>Energy Efficient</strong><br/>Only 0.25W idle power consumption</div>
  <div><i class="fa-solid fa-code"></i> <strong>Fully Customizable</strong><br/>Complete ESPHome config control</div>
</div>

## Get Started in Minutes

Flash pre-built firmware directly from your browser. Select your hardware revision below and click the install button — no drivers or software required.

→ [Jump to hardware revisions & flash buttons](#hardware-revisions)

## Hardware Revisions

{% include feature_row id="feature_row_rev3" type="left" %}

{% include feature_row id="feature_row_rev30" type="left" %}

{% include feature_row id="feature_row_rev2" type="left" %}

{% include feature_row id="feature_row_rev1" type="left" %}

<div style="text-align: center; margin: 2em 0;">
  <a href="https://www.elecrow.com/wifi-fancontroller1.html" class="btn btn--primary btn--large">Buy Now — $35.99</a>
</div>

---

## Get Your Board

**Ready to upgrade your setup?** Boards and 3D-printed cases available at [Elecrow](https://www.elecrow.com/wifi-fancontroller1.html) for $35.99.

**Customizable**: ESPHome configurations and documentation available on [GitHub](https://github.com/zeroflow/wifi-fancontroller). Create custom automations and share your configurations with the community.

**Need Help?** Check the [documentation](https://github.com/zeroflow/wifi-fancontroller#readme) or open an issue on GitHub.

---

## ESPHome Modules

The fan controller firmware is built around reusable ESPHome packages. Drop any module into your configuration with a single `packages:` entry — no copy-pasting required. All parameters have sensible defaults and can be tuned live from Home Assistant.

| Module | File | Description |
|--------|------|-------------|
| <i class="fa-solid fa-sliders"></i> **Temperature PID** | `modules/temperature_pid.yaml` | Full PID thermostat with Home Assistant climate entity. Live kp/ki/kd tuning, one-click autotune, and deadband to prevent oscillation. [→ PID Simulator](pid-simulator) |
| <i class="fa-solid fa-chart-line"></i> **Temperature Curve** | `modules/temperature_curve.yaml` | Up to 5 configurable temperature/speed points with linear interpolation. Points are editable from Home Assistant and auto-sorted at runtime. |
| <i class="fa-solid fa-temperature-half"></i> **Temperature Linear** | `modules/temperature_linear.yaml` | Simple three-zone control: off below a threshold, constant minimum speed, then linear ramp to full speed. |
| <i class="fa-solid fa-gauge-high"></i> **RPM PI Control** | `modules/rpm_pi_control.yaml` | Holds each fan at a target RPM using a PI controller. Includes anti-windup, deadband, and per-fan debug sensors. |
| <i class="fa-solid fa-circle-dot"></i> **RPM Status LEDs** | `modules/rpm_status_leds.yaml` | Colors each fan's RGB LED from red (stopped) to green (full speed) based on live RPM. Configurable max RPM scale. |

### Usage Example

Add any module to your ESPHome config via the `packages` key:

```yaml
packages:
  hardware: !include hardware-rev-3.3.yaml
  temperature_pid:
    url: https://github.com/zeroflow/wifi-fancontroller
    files: [modules/temperature_pid.yaml]
    ref: main
    vars:
      friendly_name: "Server Rack"
      kp: "3.0"
      ki: "0.005"
```

Modules can be combined — for example, pair `temperature_pid` for automatic control with `rpm_status_leds` for visual feedback.

<script type="module" src="https://unpkg.com/esp-web-tools@8.0.6/dist/web/install-button.js?module"></script>
