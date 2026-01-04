# OIM Daily Reporting System - PWA

## 📱 Progressive Web App - Irong Barat Platforms

System pelaporan harian untuk Operations, UAUC Analysis & Catering Management yang boleh diinstall di semua devices.

---

## 🚀 CARA INSTALL

### **iPad / iPhone (iOS Safari)**

1. **Buka dalam Safari** (Kena guna Safari, Chrome tak boleh install)
   - Pastikan file `index.html` hosted di server atau localhost
   - Navigate ke URL aplikasi

2. **Share & Install**
   - Tap butang **Share** (kotak dengan anak panah ke atas)
   - Scroll dan pilih **"Add to Home Screen"**
   - Confirm nama app: `OIM Reports`
   - Tap **"Add"**

3. **Icon akan muncul di Home Screen**
   - Buka macam normal app
   - Fullscreen, no browser bars!

**Tips iOS:**
- Kena guna **Safari** browser sahaja
- Chrome/Firefox dalam iOS tak support PWA install
- Icon akan muncul seperti app biasa
- Data tersimpan dalam device, boleh guna offline

---

### **Android Phone (Chrome/Samsung Internet)**

1. **Buka dalam Chrome atau Samsung Internet**
   - Navigate ke URL aplikasi
   - Tunggu sikit, banner install akan keluar

2. **Install dari Banner**
   - Bila keluar popup "Add OIM Reports to Home screen?"
   - Tap **"Install"** atau **"Add"**
   - OR
   - Tap menu (3 dots) → **"Install app"** atau **"Add to Home screen"**

3. **Icon muncul di Home Screen & App Drawer**
   - Buka macam normal app
   - Dapat notification bila ada update

**Tips Android:**
- Chrome recommended (built-in support)
- Samsung Internet pun boleh
- Firefox ada support tapi limited

---

### **PC / Desktop (Windows/Mac)**

#### **Chrome / Edge:**
1. Navigate ke URL aplikasi
2. Tengok address bar, ada icon **install** (computer with arrow)
3. Click icon install atau:
   - Click menu (3 dots) → **"Install OIM Reports..."**
4. Confirm install
5. App akan buka dalam window sendiri
6. Shortcut created di:
   - **Windows:** Start Menu + Desktop
   - **Mac:** Applications folder

#### **Alternative - Create Desktop Shortcut:**
1. Buka dalam browser
2. Bookmark page
3. Drag bookmark to desktop
4. Rename to "OIM Reports"

---

## 📋 FILES STRUCTURE

```
oim-daily-reporting-pwa/
├── index.html              # Main application file (PWA-enabled)
├── manifest.json           # PWA manifest (app metadata)
├── service-worker.js       # Service worker (offline functionality)
├── icon-generator.html     # Tool to generate icons
├── icon-72.png            # Icon 72x72
├── icon-96.png            # Icon 96x96
├── icon-128.png           # Icon 128x128
├── icon-144.png           # Icon 144x144
├── icon-152.png           # Icon 152x152
├── icon-192.png           # Icon 192x192
├── icon-384.png           # Icon 384x384
├── icon-512.png           # Icon 512x512
└── README.md              # This file
```

---

## 🎨 GENERATE ICONS

1. Buka `icon-generator.html` dalam browser
2. Click "Generate Icons"
3. Semua 8 icon sizes akan auto download
4. Place all icon files dalam same folder dengan `index.html`

**OR guna icon sendiri:**
- Create PNG images dengan sizes: 72, 96, 128, 144, 152, 192, 384, 512
- Nama file: `icon-72.png`, `icon-96.png`, etc.
- Recommended: Square images dengan rounded corners

---

## 🌐 HOSTING OPTIONS

### **Option 1: Local Hosting (Testing)**
```bash
# Python (recommended untuk testing)
python -m http.server 8000

# OR Node.js
npx http-server -p 8000

# Akses di: http://localhost:8000
```

### **Option 2: GitHub Pages (Free & Easy)**
1. Create GitHub repository
2. Upload all files
3. Settings → Pages → Enable
4. URL: `https://username.github.io/repo-name`

### **Option 3: Netlify (Free Hosting)**
1. Sign up at netlify.com
2. Drag & drop folder
3. Auto-deploy dengan custom domain

### **Option 4: Internal Server**
- Upload ke company server
- Configure HTTPS (required for PWA)
- Share URL dengan crew

---

## ✨ PWA FEATURES

✅ **Offline Mode** - Boleh guna tanpa internet (data saved locally)  
✅ **Install to Device** - Macam native app  
✅ **Auto Updates** - Service worker cache updates  
✅ **Local Storage** - All data saved in device  
✅ **Responsive** - Works on iPad, iPhone, Android, PC  
✅ **Full Screen** - No browser bars bila installed  
✅ **App Shortcuts** - Direct access to modules  
✅ **Fast Loading** - Cached assets  

---

## 🔧 TESTING CHECKLIST

### iOS Safari:
- [ ] Open dalam Safari
- [ ] Share → Add to Home Screen available
- [ ] Icon appears correctly
- [ ] Fullscreen mode working
- [ ] Offline functionality works
- [ ] Local storage persists

### Android Chrome:
- [ ] Install banner appears
- [ ] Icon appears in app drawer
- [ ] Fullscreen mode working
- [ ] Offline functionality works
- [ ] Updates working

### Desktop:
- [ ] Install prompt appears
- [ ] App window opens
- [ ] Shortcut created
- [ ] Works like desktop app

---

## 📱 APP SHORTCUTS

Shortcuts available selepas install (Android/Desktop):
- **Operations Report** - Direct to operations module
- **UAUC Analysis** - Direct to UAUC module  
- **Catering** - Direct to catering module

Access via:
- Right-click app icon (Desktop)
- Long-press app icon (Android)

---

## 🔒 DATA STORAGE

- **Location:** Browser LocalStorage (device)
- **Backup:** JSON export available
- **History Limit:** 50 entries per module
- **Offline:** Fully functional without internet
- **Sync:** Manual via JSON import/export

---

## 🐛 TROUBLESHOOTING

### "Install button tak keluar"
- iOS: Kena guna Safari sahaja
- Android: Refresh page, tunggu sikit
- Desktop: Check bila address bar ada install icon
- Pastikan HTTPS enabled (except localhost)

### "Offline mode tak jalan"
- Check browser console for service worker errors
- Clear cache dan reload
- Reinstall PWA

### "Data hilang"
- Jangan clear browser data/cache
- Export JSON regularly untuk backup
- Use same browser untuk consistency

### "Icon tak cantik"
- Generate new icons guna `icon-generator.html`
- OR replace dengan custom icons
- Pastikan semua 8 sizes ada

---

## 📞 SUPPORT

Untuk any issues atau enhancements:
1. Check browser console untuk errors
2. Test dalam incognito mode
3. Clear cache & reinstall
4. Export data before troubleshooting

---

## 🎯 RECOMMENDED SETUP

**For Offshore Use:**
1. Install PWA di semua devices (iPad + Phone)
2. Sync data via JSON export/import  
3. Regular backups to OneDrive/Google Drive
4. Test offline functionality before going offshore
5. Have desktop backup for reports

**Best Practice:**
- Install di main device (iPad)
- Backup device (Phone)  
- Desktop for final reports & PDF
- Regular JSON exports

---

## 📝 VERSION INFO

- **App:** OIM Daily Reporting System
- **Type:** Progressive Web App (PWA)
- **Platform:** Irong Barat A, B, C
- **Modules:** Operations, UAUC, Catering
- **Offline:** ✅ Full support
- **Updated:** January 2026

---

**🚀 Selamat menggunakan! Offshore life made easier with PWA!** 🏗️
