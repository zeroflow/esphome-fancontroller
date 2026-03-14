import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  site: 'https://fancontroller.arthofer.dev',
  vite: { plugins: [tailwindcss()] },
  integrations: [
    starlight({
      title: 'WiFi Fan Controller',
      social: [
        {
          icon: 'github',
          label: 'GitHub',
          href: 'https://github.com/zeroflow/wifi-fancontroller',
        },
      ],
      customCss: ['./src/styles/global.css'],
      sidebar: [
        {
          label: 'Getting Started',
          items: [
            { label: 'Overview', slug: 'getting-started' },
            { label: 'First Setup', slug: 'getting-started/first-setup' },
            { label: 'Home Assistant', slug: 'getting-started/home-assistant' },
            { label: 'Firmware Updates', slug: 'getting-started/firmware-updates' },
            { label: 'Troubleshooting', slug: 'getting-started/troubleshooting' },
          ],
        },
        {
          label: 'Reference',
          items: [
            { label: 'Overview', slug: 'reference' },
            {
              label: 'Hardware',
              items: [
                { label: 'Overview', slug: 'reference/hardware' },
                { label: 'Rev 3.x (3.1/3.2/3.3)', slug: 'reference/hardware/rev-3-x' },
                { label: 'Rev 3.0', slug: 'reference/hardware/rev-3-0' },
                { label: 'Rev 2.0', slug: 'reference/hardware/rev-2-0' },
                { label: 'Rev 1.0', slug: 'reference/hardware/rev-1-0' },
              ],
            },
            {
              label: 'Modules',
              items: [
                { label: 'Overview', slug: 'reference/modules' },
                { label: 'Temperature PID', slug: 'reference/modules/temperature-pid' },
                { label: 'Temperature Linear', slug: 'reference/modules/temperature-linear' },
                { label: 'Temperature Curve', slug: 'reference/modules/temperature-curve' },
                { label: 'RPM PI Control', slug: 'reference/modules/rpm-pi-control' },
                { label: 'RPM Status LEDs', slug: 'reference/modules/rpm-status-leds' },
              ],
            },
          ],
        },
      ],
    }),
  ],
});
