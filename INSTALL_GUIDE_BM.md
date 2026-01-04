# PANDUAN INSTALL - OIM REPORTS PWA

## 🍎 **IPAD / IPHONE**

### Step 1: Buka Safari
- **WAJIB guna Safari** - Chrome/Firefox tak support
- Pergi ke URL aplikasi (contoh: http://192.168.1.100:8000)

### Step 2: Add to Home Screen
1. Tap butang **Share** 📤 (bawah tengah atau atas kanan)
2. Scroll sikit ke bawah
3. Cari **"Add to Home Screen"** ➕
4. Tap!

### Step 3: Confirm
1. Nama app akan keluar: **"OIM Reports"**
2. Boleh edit nama kalau nak
3. Tap **"Add"** (atas kanan)
4. SIAP! 🎉

### Step 4: Buka App
- Icon muncul di Home Screen
- Tap untuk buka
- Fullscreen, takde browser bar!
- Works offline! ✈️

---

## 🤖 **ANDROID PHONE**

### Step 1: Buka Chrome
- Chrome recommended (Samsung Internet pun ok)
- Navigate ke URL aplikasi

### Step 2: Cara 1 - Auto Popup
- Tunggu sikit (2-3 saat)
- Popup akan keluar: **"Add OIM Reports to Home screen?"**
- Tap **"Install"**
- SIAP! 🎉

### Step 3: Cara 2 - Manual Install
1. Tap menu **⋮** (3 dots, atas kanan)
2. Pilih **"Install app"** atau **"Add to Home screen"**
3. Confirm nama
4. Tap **"Install"**
5. SIAP! 🎉

### Step 4: Buka App
- Icon muncul di Home Screen & App Drawer
- Buka macam app biasa
- Fullscreen mode!
- Works offline! ✈️

---

## 💻 **PC / LAPTOP**

### Chrome / Edge:

#### Cara 1 - Icon Install
1. Buka dalam browser
2. Tengok address bar (sebelah kanan URL)
3. Ada icon **komputer + anak panah** 🖥️⬇️
4. Click icon tu
5. Click **"Install"**
6. SIAP! 🎉

#### Cara 2 - Menu
1. Click menu **⋮** (3 dots, atas kanan)
2. Cari **"Install OIM Reports..."**
3. Click
4. Click **"Install"**
5. SIAP! 🎉

### Lepas Install:
- App buka dalam window sendiri
- Shortcut dalam Start Menu (Windows)
- Shortcut dalam Applications (Mac)
- Works like desktop app!

---

## 🎨 **SETUP ICONS (OPTIONAL)**

Kalau nak icon cantik:

1. Buka `icon-generator.html` dalam browser
2. Click butang **"Generate Icons"**
3. Tunggu download 8 files:
   - icon-72.png
   - icon-96.png
   - icon-128.png
   - icon-144.png
   - icon-152.png
   - icon-192.png
   - icon-384.png
   - icon-512.png
4. Letak semua dalam folder yang sama dengan `index.html`
5. Refresh browser
6. Install semula PWA

---

## 🌐 **CARA HOST (BAGI TEAM ACCESS)**

### Testing Locally (Untuk Cuba):

#### Python (Senang!):
```bash
# Buka terminal/command prompt
# Masuk folder app
cd path/to/oim-reports

# Run server
python -m http.server 8000

# Buka browser, pergi:
# http://localhost:8000
```

#### Node.js:
```bash
npx http-server -p 8000
```

### Share dengan Team (Same Network):
1. Cek IP address komputer awak
   - Windows: `ipconfig` dalam cmd
   - Mac: `ifconfig` dalam terminal
   - Cari IP macam: `192.168.1.100`
2. Share URL: `http://192.168.1.100:8000`
3. Team boleh access dari phone/iPad/PC

### Hosting Permanent (Free):

#### GitHub Pages:
1. Buat account GitHub
2. Create repository baru
3. Upload semua files
4. Settings → Pages → Enable
5. URL: `https://username.github.io/oim-reports`
6. Share link dengan team!

#### Netlify (Paling senang):
1. Pergi netlify.com
2. Sign up (free)
3. Drag & drop folder ke website
4. Dapat URL: `https://random-name.netlify.app`
5. Boleh custom domain kalau ada

---

## ✅ **CHECKLIST SEBELUM INSTALL**

### Files Lengkap:
- [ ] index.html
- [ ] manifest.json
- [ ] service-worker.js
- [ ] 8 icon files (icon-72.png to icon-512.png)

### Testing:
- [ ] Buka dalam browser ok
- [ ] Semua modules berfungsi
- [ ] Data save & load properly
- [ ] JSON export/import works

### Installation:
- [ ] iOS: Guna Safari
- [ ] Android: Guna Chrome
- [ ] PC: Guna Chrome/Edge
- [ ] HTTPS enabled (kalau production)

---

## 🔥 **TIPS PRO**

### Untuk Offshore Use:
1. **Install di 2 devices** - iPad (main) + Phone (backup)
2. **Test offline** sebelum offshore
3. **Export data** regular ke OneDrive/Google Drive
4. **PDF backup** untuk reports penting

### Data Management:
- Export JSON setiap minggu
- Clear old history (> 30 days)
- Backup before updates
- Sync via JSON import/export

### Troubleshooting:
- Tak boleh install? → Check browser & https
- Icon tak cantik? → Generate new icons
- Data hilang? → Import from JSON backup
- Slow loading? → Clear cache & reinstall

---

## ❓ **SOALAN LAZIM**

**Q: Kenapa Chrome dalam iPhone tak boleh install?**  
A: iOS restrict PWA install to Safari only. Wajib guna Safari.

**Q: Offline mode real ke?**  
A: 100%! Service worker cache everything. Internet disconnect pun boleh guna.

**Q: Data sync automatic ke?**  
A: Tak. Kena manual export/import JSON. But data save locally automatic.

**Q: Boleh guna kat multiple devices?**  
A: Boleh! Install kat semua devices. Sync via JSON export/import.

**Q: HTTPS wajib ke?**  
A: Untuk production (internet), YES. Localhost/local network tak perlu.

**Q: Update macam mana?**  
A: Service worker auto check. Refresh page untuk update. OR uninstall & install semula.

**Q: Icon boleh custom?**  
A: BOLEH! Replace 8 icon files dengan design sendiri. Size kena sama.

---

## 🎯 **QUICK START SUMMARY**

### iOS (iPad/iPhone):
Safari → Share → Add to Home Screen → Add → DONE!

### Android:
Chrome → Tunggu popup → Install → DONE!  
OR Menu → Install app → Install → DONE!

### PC:
Chrome → Icon install dalam address bar → Install → DONE!  
OR Menu → Install → DONE!

---

**That's it! Install sekali, guna offline, data secure dalam device, macam native app!** 🚀

**Selamat mencuba! Kalau ada masalah, roger je!** 💪🏗️
