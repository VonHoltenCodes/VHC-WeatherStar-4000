# VHC-WeatherStar-4000+ (Local Desktop Edition)

**VonHoltenCodes Custom Edition** - A local desktop weather display application based on WeatherStar 4000+

![WeatherStar 4000+](https://img.shields.io/badge/WeatherStar-4000%2B-orange)
![License](https://img.shields.io/badge/license-Educational%20%2F%20Private%20Use-blue)
![Node](https://img.shields.io/badge/node-%3E%3D18.0-brightgreen)

---

## ⚠️ Attribution & License

This project is a **customized fork** of the original [WeatherStar 4000+](https://github.com/netbymatt/ws4kp) by [netbymatt](https://github.com/netbymatt).

**Original Project:**
- Repository: https://github.com/netbymatt/ws4kp
- Author: Matt Walsh (netbymatt)
- Original License: GPL-3.0
- Demo: https://weatherstar.netbymatt.com

**VonHoltenCodes Customizations:**
- Retro orange/red branding theme
- VH logo integration
- Desktop application launcher for Pop!_OS/Linux
- Simplified local hosting setup

### License Restrictions

**This customized version is for EDUCATIONAL and PRIVATE USE ONLY.**

- ✅ Personal use on your own computer
- ✅ Educational/learning purposes
- ✅ Private experimentation
- ❌ Commercial use
- ❌ Public hosting/deployment
- ❌ Redistribution without attribution

The original WeatherStar 4000+ project maintains its GPL-3.0 license. This fork respects that license while adding VonHoltenCodes branding for personal use.

---

## 📋 Overview

This is a **local desktop application** that displays weather information in the nostalgic style of The Weather Channel's WeatherStar 4000 from the 1990s. It's customized with VonHoltenCodes branding and optimized for local hosting.

### Features

- 🌤️ **Real-time weather data** from NOAA Weather API (USA only)
- 📺 **Retro interface** inspired by 1990s WeatherStar 4000
- 🎨 **Custom VonHoltenCodes branding** with orange/red theme
- 🖥️ **Desktop launcher** for easy access
- 📡 **14 weather displays** including current conditions, forecasts, radar, and more
- 🎵 **Background music** (AI-generated smooth jazz)
- ⚡ **Kiosk mode** for full-screen display

---

## 🚀 Quick Start

### Prerequisites

- **Node.js**: v18 or higher (v20+ recommended)
- **npm**: Latest version
- **Operating System**: Linux (tested on Pop!_OS 22.04)
- **Browser**: Firefox, Chrome, or Chromium

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/VonHoltenCodes/VHC-WeatherStar-4000-.git
   cd VHC-WeatherStar-4000-
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start the application:**
   ```bash
   npm start
   ```

4. **Open your browser:**
   - Navigate to: `http://localhost:3000`
   - Enter a location (ZIP code or city name)
   - Click GO to load weather data

### Desktop Launcher (Linux)

For easy access, install the desktop launcher:

```bash
# Copy the launcher to your applications folder
cp weatherstar4000.desktop ~/.local/share/applications/

# Update the desktop database
update-desktop-database ~/.local/share/applications/
```

Now you can search for "**WeatherStar 4000**" in your application menu!

---

## 🎨 VonHoltenCodes Customizations

This version includes the following custom branding:

### Visual Branding
- **VH Logo Badge** - Top right corner with subtle pulse animation
- **Powered By Badge** - Bottom right showing "VonHoltenCODES"
- **Retro Orange/Red Theme** - Custom color palette:
  - Primary Orange: `#ff4500`
  - Accent Red: `#ff0000`
  - Multi-layer glow effects

### Technical Customizations
- **Custom SCSS module**: `_vonholten-branding.scss`
- **Modified EJS template**: VH branding elements in `index.ejs`
- **Desktop launcher**: `.desktop` file for Linux application menu
- **Simple startup script**: `simple-start.sh` for easy launching

---

## 📖 Usage

### Starting the Server

**Option 1: Desktop Launcher**
1. Press Super key (Windows key)
2. Search for "WeatherStar 4000"
3. Click the icon
4. Wait for "Server listening on port 3000"
5. Open browser to `localhost:3000`

**Option 2: Terminal**
```bash
cd /path/to/VHC-WeatherStar-4000-
./simple-start.sh
```

**Option 3: Manual**
```bash
npm start
```

### Using the Weather Display

1. **Enter Location:**
   - Type a ZIP code (e.g., `60601`)
   - Or city and state (e.g., `Orlando, FL`)
   - Or click the GPS button for your current location

2. **Click GO** - Weather data will load

3. **Navigate:**
   - Use **Play/Pause** to control automatic cycling
   - **Previous/Next** to manually switch displays
   - **F key** for fullscreen
   - **Space bar** to pause/resume

4. **Customize:**
   - Toggle individual displays on/off
   - Adjust playback speed (0.5x - 1.5x)
   - Enable scan lines for CRT effect
   - Switch between US and metric units

---

## ⚙️ Configuration

### Port Configuration

Default port is **3000**. To change:

1. Edit `.env` file:
   ```env
   WS4KP_PORT=3001
   ```

2. Or set environment variable:
   ```bash
   WS4KP_PORT=3001 npm start
   ```

### Default Settings

Edit `.env` to customize default behavior:

```env
# Port
WS4KP_PORT=3000

# Default location (optional)
# WSQS_latLonQuery=Orlando

# Playback speed (0.5 to 1.5)
WSQS_settings-speed-range=1.0

# Enable scan lines
WSQS_settings-scanlines-checkbox=true

# Units (us or metric)
WSQS_settings-units-select=us

# Kiosk mode
WSQS_settings-kiosk-checkbox=false
```

---

## 🛠️ Development

### Project Structure

```
VHC-WeatherStar-4000-/
├── server/
│   ├── styles/scss/_vonholten-branding.scss  # Custom branding CSS
│   ├── images/vonholten-logo*.svg            # Logo assets
│   ├── scripts/                              # Client-side JavaScript
│   └── fonts/                                # WeatherStar fonts
├── views/
│   └── index.ejs                             # Modified with VH branding
├── proxy/                                     # API caching proxy
├── .env                                       # Configuration
├── simple-start.sh                            # Desktop launcher script
├── weatherstar4000.desktop                    # Linux desktop entry
├── package.json
└── README.md
```

### Building CSS

After modifying SCSS files:

```bash
npm run build:css
```

### Modifying Branding

1. Edit `server/styles/scss/_vonholten-branding.scss`
2. Rebuild CSS: `npm run build:css`
3. Hard refresh browser: `Ctrl+Shift+R`

---

## 🌐 Weather Data Sources

All weather data is fetched from public APIs:

- **NOAA Weather.gov API** - Primary weather data
- **Iowa State Mesonet** - Radar imagery
- **Storm Prediction Center** - Severe weather outlooks

**USA Only:** This application only works within the United States due to NOAA API limitations.

---

## 🐛 Troubleshooting

### Server won't start
```bash
# Check if port is in use
lsof -i :3000

# Kill existing process
pkill -f "node index.mjs"

# Reinstall dependencies
rm -rf node_modules
npm install
```

### Weather data not loading

1. Check internet connection
2. Verify you entered a valid USA location
3. Open browser console (F12) for errors
4. NOAA API may be temporarily down

### GO button not clickable

1. Hard refresh: `Ctrl+Shift+R`
2. Clear browser cache
3. Check browser console for JavaScript errors

### Desktop launcher doesn't work

1. Verify script is executable:
   ```bash
   chmod +x simple-start.sh
   ```

2. Update desktop database:
   ```bash
   update-desktop-database ~/.local/share/applications/
   ```

---

## 📚 Resources

### Original Project
- **Repository:** https://github.com/netbymatt/ws4kp
- **Documentation:** https://github.com/netbymatt/ws4kp#weatherstar-4000
- **Live Demo:** https://weatherstar.netbymatt.com

### VonHoltenCodes
- **Website:** https://vonholtencodes.com
- **GitHub:** https://github.com/VonHoltenCodes

### APIs Used
- **NOAA API:** https://www.weather.gov/documentation/services-web-api
- **Radar:** https://mesonet.agron.iastate.edu/
- **SPC:** https://www.spc.noaa.gov/

---

## 🙏 Credits

### Original Author
**Matt Walsh (netbymatt)**
- Created the WeatherStar 4000+ project
- Maintained the original codebase
- GPL-3.0 license

### VonHoltenCodes Customizations
**Trenton VonHolten**
- Custom branding and theme
- Desktop application integration
- Linux launcher setup

### Special Thanks
- The Weather Channel for the original WeatherStar 4000 inspiration
- NOAA for providing free weather data APIs
- Open source community

---

## 📄 License

This project maintains the **GPL-3.0 license** from the original WeatherStar 4000+ project.

**Additional Restrictions for VonHoltenCodes Edition:**
- **Educational and Private Use Only**
- No commercial use
- No public deployment without permission
- Attribution required for any derivative works

See [LICENSE](LICENSE) for full details.

---

## 🔗 Links

- **Original Project:** [WeatherStar 4000+ by netbymatt](https://github.com/netbymatt/ws4kp)
- **VonHoltenCodes:** [https://vonholtencodes.com](https://vonholtencodes.com)
- **This Repository:** [VHC-WeatherStar-4000-](https://github.com/VonHoltenCodes/VHC-WeatherStar-4000-)

---

**Built with ❤️ for weather enthusiasts and retro tech fans**

*Remember: This is a fun, educational project. Always check official weather sources for critical weather information.*
