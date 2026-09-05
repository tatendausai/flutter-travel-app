# iTravelZW — Zimbabwe Travel & Transit Discovery

A sleek, responsive cross-platform mobile application designed to simplify inter-city transit discovery, urban destination exploration, and cultural event navigation across Zimbabwe. 

Built with **Flutter** and **Dart**, the app features a curated, card-based user interface optimized for high scannability, rapid route lookup, and offline-ready local exploration.

---

## 📱 Key Features

* **Inter-City Transit Directory:** Search and browse national transport operators (e.g., ZUPCO) by destination corridor (Harare, Bulawayo, Mutare, Chipinge, Plumtree, Kadoma) with clear route and pricing metadata.
* **Destination Showcases:** Curated cultural and urban city guides spotlighting iconic hubs like Harare (*"The City That Never Sleeps"*) and Bulawayo (*"The City of Kings"*).
* **Local Events & Festivals:** Horizontal event carousels highlighting regional arts, music, and cultural gatherings (e.g., Chinhoyi Calabash) with dates, times, venue locations, and quick-save counters.
* **Direct Action Hub:** One-tap action buttons on transport and place detail screens for quick calling, routing, external scheduling links, and sharing.
* **Optimized Mobile UX:** Minimal 3-tab navigation bar (Discovery Feed, A–Z Directory, User Profile) with responsive card layouts and edge-to-edge system bar integration.

---

## 🛠️ Tech Stack & Toolchain

* **Framework:** Flutter 3.x
* **Language:** Dart 3.x
* **Build System & Toolchain:** Gradle 8.5, Android Gradle Plugin (AGP) 8.3.x, Temurin JDK 17
* **Rendering Engine:** Impeller (OpenGL / Vulkan backend)
* **Design System:** Material Design 3 with custom iconography via FontAwesome

---

## 📂 Architecture & Project Structure

```text
lib/
├── itravel_main/
│   ├── screens_main/        # Top-level screen views (Travel, Hotel, Activities, Events)
│   └── widgets_main/        # Reusable carousels, cards, and bottom bars
├── primary/
│   ├── models/              # Strongly typed data models for transit, lodging, and events
│   ├── screens/             # Detail screens and fallback landing pages
│   └── widgets/             # Specialized list views and presentation components
└── main.dart                # Application entry point, routing, and theme config
