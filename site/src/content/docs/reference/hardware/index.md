---
title: Hardware Revisions
description: Overview and comparison of WiFi Fan Controller hardware revisions
---

The WiFi Fan Controller is available in several hardware revisions. All revisions share the same core features -- 4 PWM fan headers, an HDC1080 temperature and humidity sensor, and ESPHome-based firmware with Home Assistant integration.

Choose your revision below for detailed specifications, pin assignments, and firmware installation. Note that fan behavior at low PWM duty cycles varies by model -- see the [Fan Compatibility](/reference/fan-compatibility/) page for details on which fans can spin down to 0 RPM.

## Revision Comparison

| Feature | Rev 1.0 | Rev 2.0 | Rev 3.0 | Rev 3.x (3.1/3.2/3.3) |
|---------|---------|---------|---------|------------------------|
| MCU | ESP32 | ESP32-S2 | ESP32-S2 | ESP32-S2 |
| Board | esp32dev | esp32-s2-saola-1 | esp32-s2-saola-1 | esp32-s2-saola-1 |
| Flashing | Serial header | USB-C | USB-C | USB-C |
| Status LED | Red (single) | Red (single) | Red (single) | RGB (SK6805) x5 |
| Expansion | I2C + 2x ext input | I2C | QWIIC + I2C + NeoPixel | QWIIC + I2C + NeoPixel |
| PWM buffering | No | No | Yes | Yes |
| Fan connectors | 4x PWM | 4x PWM | 4x PWM | 4x PWM |
| Sensor | HDC1080 | HDC1080 | HDC1080 | HDC1080 |

## Revisions

- **[Rev 3.x (3.1 / 3.2 / 3.3)](/reference/hardware/rev-3-x/)** -- Latest generation with RGB status LEDs, QWIIC expansion, and NeoPixel output. All three sub-revisions share identical firmware and pinout.
- **[Rev 3.0](/reference/hardware/rev-3-0/)** -- Added QWIIC I2C, NeoPixel expansion, and PWM buffering. No RGB status LEDs.
- **[Rev 2.0](/reference/hardware/rev-2-0/)** -- Introduced USB-C flashing with ESP32-S2.
- **[Rev 1.0](/reference/hardware/rev-1-0/)** -- Original ESP32 design with serial flashing.
