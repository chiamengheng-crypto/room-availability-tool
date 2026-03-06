# Room Availability Tool - Vercel Deployment

## 📁 Project Structure

```
vercel/
├── index.html           # Main tool (read-only)
├── CALENDAR_VIEW.html   # Calendar view (will copy)
├── sync_data.json       # Booking data (will copy)
├── package.json         # Vercel config
└── vercel.json          # Routing config
```

## 🚀 Deployment Steps

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Create a new repository: `room-availability-tool`
3. Don't initialize with README (we'll push existing files)

### Step 2: Push to GitHub

```bash
cd "C:\Users\Vincent Chiam\.openclaw\workspace\room_availability\vercel"

git init
git add .
git commit -m "Initial commit - Room Availability Tool"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/room-availability-tool.git
git push -u origin main
```

### Step 3: Deploy to Vercel

1. Go to https://vercel.com
2. Sign in with GitHub
3. Click "New Project"
4. Import `room-availability-tool` repository
5. Click "Deploy"
6. Done! You'll get a URL like: `https://room-availability-tool.vercel.app`

---

## 🔄 Updating Data

### Method 1: Manual Push (Simple)

1. **Sync data locally** (from your PC with HostPlatform access)
2. **Copy to Vercel folder**:
   ```bash
   copy sync_data.json vercel\
   ```
3. **Push to GitHub**:
   ```bash
   cd vercel
   git add sync_data.json
   git commit -m "Update booking data"
   git push
   ```
4. **Vercel auto-deploys** within seconds

### Method 2: Automated Script

Run this script after syncing from local:

```bash
cd "C:\Users\Vincent Chiam\.openclaw\workspace\room_availability"
copy sync_data.json vercel\
copy CALENDAR_VIEW.html vercel\
cd vercel
git add .
git commit -m "Update data - %date%"
git push
```

---

## 📋 Version Comparison

| Feature | Local Version | Vercel Version |
|---------|---------------|----------------|
| **Sync from HostPlatform** | ✅ Full sync | ❌ Read-only |
| **Calendar View** | ✅ | ✅ |
| **Availability Check** | ✅ | ✅ |
| **Quotation** | ✅ | ✅ |
| **WhatsApp Summary** | ✅ | ✅ |
| **Always Online** | ❌ (PC must be on) | ✅ 24/7 |

---

## 🔗 URLs

- **Local**: http://localhost:8080
- **Vercel**: https://room-availability-tool.vercel.app (after deployment)

---

## ⚠️ Important Notes

1. **Vercel is read-only** - Cannot sync from HostPlatform
2. **Update data manually** - Push new `sync_data.json` after local sync
3. **Both versions work independently** - Use local for syncing, Vercel for always-on access

---

## 🎯 Recommended Workflow

1. **Sync locally** → Use local version to sync from HostPlatform
2. **Push to GitHub** → Run update script
3. **Use Vercel** → For customer access when your PC is offline

---

## 📞 Support

If you need help deploying, ask Nano (your AI assistant)!