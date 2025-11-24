# TempScale

TempScale is a clean and intuitive iOS app that instantly converts temperature values between **Fahrenheit (°F)**, **Celsius (°C)**, and **Kelvin (K)**. Built with SwiftUI and designed with simplicity in mind, TempScale provides fast, accurate, and convenient temperature conversion with zero clutter.

---

## 🚀 Features

- Convert between **Fahrenheit**, **Celsius**, and **Kelvin**
- Real-time conversion as you type
- Simple and modern SwiftUI user interface
- Small, lightweight, and fast
- No ads, no tracking, no unnecessary permissions

---

## 🛠️ Tech Stack

- **Swift 5+**
- **SwiftUI**
- **MVVM Architecture**
- **Xcode 15+**

---

## 📦 Installation

Clone the repository:

```bash
git clone https://github.com/your-username/TempScale.git
```

Open the project:

```bash
cd TempScale
open TempScale.xcodeproj
```

Run it on an iOS simulator or a physical device.

---

## 🔢 Conversion Logic

TempScale uses precise scientific formulas for all temperature conversions:

- **C → F**  
  `F = (C × 9/5) + 32`

- **F → C**  
  `C = (F − 32) × 5/9`

- **C → K**  
  `K = C + 273.15`

- **K → C**  
  `C = K − 273.15`

- **F → K**  
  Convert F → C → K

- **K → F**  
  Convert K → C → F

---

## 🎨 App Icon

Your app icon is stored in:

```
Assets.xcassets/AppIcon.appiconset
```

Update or add additional resolutions as needed for App Store submission.

---

## 🤝 Contributing

1. Fork this repository  
2. Create a new feature branch  
3. Commit your changes  
4. Submit a pull request  

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 👤 Author

**Ben Do**  
iOS Developer  
GitHub: https://github.com/BDoGG12
