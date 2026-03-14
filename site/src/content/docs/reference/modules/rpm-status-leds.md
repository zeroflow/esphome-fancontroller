---
title: RPM Status LEDs
description: RGB LED status indicator module based on fan RPM readings
---

:::caution[Rev 3.1+ Only]
This module requires **Rev 3.1 or later** hardware (3.1, 3.2, or 3.3). Earlier revisions do not have per-fan RGB LEDs.
:::

## Purpose

The RPM Status LEDs module provides visual RPM feedback using the per-fan RGB LEDs on Rev 3.x boards. Each LED displays a color from red (0 RPM) through orange to green (full RPM), giving at-a-glance fan health status without checking Home Assistant.

## When to Use

Use this module when you want a quick visual indicator of whether your fans are running and at what relative speed. It pairs with any temperature module -- the temperature module controls the fan speed, and the LEDs show you the result.

See the [modules overview](/reference/modules/) for a comparison of all available modules.

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `full_rpm` | `"2500"` | RPM value that maps to fully green LED |

## How It Works

The module reads the RPM sensor for each fan every 10 seconds and maps the value to a red-to-green color gradient:

- **0 RPM** -- fully red
- **Between 0 and full_rpm** -- interpolated (e.g., half speed shows orange/yellow)
- **full_rpm or above** -- fully green

LED brightness is set to 50%. The module writes directly to the `fan1_led` through `fan4_led` partition light entities defined in the Rev 3.x hardware packages.

The interval component is exposed as `rpm_status_leds_interval`, allowing you to override it in your own config (e.g., to change the update frequency).

## Home Assistant Entities

This module creates **no additional Home Assistant entities**. It writes directly to the existing LED partition light entities (`fan1_led` through `fan4_led`) that are already exposed by the Rev 3.x hardware package.

## YAML Examples

### Basic Usage

```yaml
packages:
  rpm_status_leds:
    url: https://github.com/zeroflow/wifi-fancontroller
    ref: main
    files:
      - path: modules/rpm_status_leds.yaml
        vars:
          full_rpm: "2500"
```

### Quieter Fans

For fans with a lower maximum RPM, set `full_rpm` to match so the color gradient scales correctly:

```yaml
packages:
  rpm_status_leds:
    url: https://github.com/zeroflow/wifi-fancontroller
    ref: main
    files:
      - path: modules/rpm_status_leds.yaml
        vars:
          full_rpm: "1500"
```

### Changing the Update Interval

The interval defaults to 10 seconds. Override `rpm_status_leds_interval` to change the frequency:

```yaml
packages:
  rpm_status_leds:
    url: https://github.com/zeroflow/wifi-fancontroller
    ref: main
    files:
      - path: modules/rpm_status_leds.yaml

interval:
  - id: rpm_status_leds_interval
    interval: 5s
```

## Tuning Tips

1. **Set full_rpm to your fans' actual maximum RPM** for accurate color representation. Check the fan datasheet or observe the maximum RPM reading in Home Assistant with fans set to 100% speed.
2. **If LEDs always show green**, your `full_rpm` value is set too low -- the fans are exceeding it. Increase `full_rpm` to match the actual top speed.
3. **If LEDs always show red or orange**, your `full_rpm` may be set too high, or the fans are running slowly. Check that the fans are receiving adequate power and that the PWM signal is set above 0%.
