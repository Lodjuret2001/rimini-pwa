import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { VitePWA } from 'vite-plugin-pwa';

export default defineConfig({
  plugins: [
    react(),
    VitePWA({
      registerType: 'autoUpdate',
      manifest: {
        name: 'Pizzeria Rimini AB PWA',
        short_name: 'Rimini PWA',
        description: 'Order pizzas and track loyalty rewards!',
        theme_color: '#2a5146',
        background_color: '#ffffff',
        display: 'standalone',
        icons: [
          {
            src: '/icons/logo-192px.png',
            sizes: '192x192',
            type: 'image/png',
          },
          {
            src: '/icons/logo-512px.png',
            sizes: '512x512',
            type: 'image/png',
          },
        ],
      },
    }),
  ],
});