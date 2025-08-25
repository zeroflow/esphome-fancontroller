# About

A ESP32-based Fan Controller

General specifications for all revisions

* 12V DC Barrel Input (5.5x2.1mm)
* 4x PWM Fan Output
* Integrated HDC1080 Temperature & Humidity Sensor

![view of the board](board_rev3.1.jpg)

## Revision history

### 1.0 - ESP32

Original Design with an ESP32, supports only flashing via 100mil header or SOCbite connector on board.

[Details](fancontroller-rev1.0.md)

### 2.0 - ESP32S2

Change of main controller from ESP32 to ESP32S2 to allow flashing via USB-C without the need for serial programming adapters.

[Details](fancontroller-rev2.0.md)

### 3.0 - Resiliency

Changes for signal & resiliency (fan ports), QWIIC I2C port, 5V Neopixel port, and SMD expansion header for unused pins.

[Details](fancontroller-rev3.0.md)

### 3.1 (latest) - RGB & Resiliency

Changes for signal & resiliency (USB), RGB LEDs (SK6805) for the board and for each fan port

[Details](fancontroller-rev3.1.md)

# Installation

You can use the button below to install the pre-built firmware directly to your device via USB from the browser.

<!-- Picker + Install button -->
<label for="build-select">Firmware build:</label>
<select id="build-select"></select>

<esp-web-install-button id="install-btn"></esp-web-install-button>

<!-- ESP Web Tools -->
<script type="module" src="https://unpkg.com/esp-web-tools@10/dist/web/install-button.js?module"></script>

<script>
  // Path to your existing multi-build manifest
  const MANIFEST_URL = "firmware/fancontroller-esp32.manifest.json";

  const select = document.getElementById("build-select");
  const btn = document.getElementById("install-btn");

  let base = null;   // manifest fields except 'builds'
  let builds = [];   // array of build objects

  // Helper: make a nice label for each build
  function labelFor(build, idx) {
    // Prefer common fields if present; fall back to part paths
    const maybe =
      build.name ||
      build.variant ||
      (build.parts && build.parts[0] && build.parts[0].path) ||
      `Build ${idx + 1}`;
    const chip = build.chipFamily ? ` (${build.chipFamily})` : "";
    return `${maybe}${chip}`;
  }

  function updateButtonManifest(selectedIndex) {
    const chosen = builds[selectedIndex];
    if (!chosen) return;
    const single = { ...base, builds: [chosen] };
    const blob = new Blob([JSON.stringify(single)], { type: "application/json" });
    btn.manifest = URL.createObjectURL(blob);
  }

  // Load your manifest once, populate the dropdown, and prime the button
  fetch(MANIFEST_URL, { cache: "no-store" })
    .then((r) => r.json())
    .then((manifest) => {
      // Split out the builds so we can recompose per selection
      const { builds: b, ...rest } = manifest;
      builds = Array.isArray(b) ? b : [];
      base = rest;

      // Populate options
      select.innerHTML = builds
        .map((build, i) => `<option value="${i}">${labelFor(build, i)}</option>`)
        .join("");

      // Initialize button with the first build (or keep previous selection)
      updateButtonManifest(select.selectedIndex);
    })
    .catch((e) => {
      console.error("Failed to load manifest:", e);
      select.innerHTML = `<option>Manifest load failed</option>`;
    });

  // Update button whenever the user changes selection
  select.addEventListener("change", (e) => updateButtonManifest(e.target.selectedIndex));
</script>