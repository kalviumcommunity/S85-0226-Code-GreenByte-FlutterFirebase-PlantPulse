# 🌱 PlantPulse

> A Flutter-based cross-platform mobile application built to explore Flutter architecture, Dart fundamentals, and reactive UI development.

---

## 📌 Project Overview

PlantPulse is a foundational Flutter project developed as part of our learning journey into cross-platform UI development.

This project demonstrates:

- Flutter’s layered architecture
- Widget-based UI development
- Reactive rendering using StatefulWidget
- Dart language fundamentals
- Cross-platform compatibility (Web & Desktop)

---

## 👥 Team Members

- **Madhav Garg**
- **Rudar**
- **Nikhil**

---

## 🏗️ Flutter Architecture

Flutter consists of three core layers:

### 1️⃣ Framework Layer (Dart)
- Built using Dart
- Includes Material and Cupertino widgets
- Handles UI, layout, gestures, and animations

### 2️⃣ Engine Layer (C++)
- Uses the Skia graphics engine
- Manages rendering, text layout, and Dart runtime

### 3️⃣ Embedder Layer
- Integrates Flutter with platform-specific APIs
- Enables support for Android, iOS, Web, and Desktop

🔎 **Key Insight:**  
Flutter does not use native UI components. Instead, it renders everything using its own engine, ensuring consistent and pixel-perfect UI across platforms.

---

## 🌳 Understanding the Widget Tree

In Flutter, everything is a widget.

PlantPulse follows a hierarchical widget tree structure:

MaterialApp  
└── Scaffold  
  ├── AppBar  
  └── Body (Center)  
    └── Text  
  └── FloatingActionButton  

Each UI element is a widget nested inside another widget.

When the state changes, Flutter rebuilds only the affected parts of the widget tree, making updates efficient and smooth.

---

## 🔄 StatelessWidget vs StatefulWidget

| StatelessWidget | StatefulWidget |
|-----------------|----------------|
| Used for static UI | Used for dynamic UI |
| No internal state | Maintains mutable state |
| Does not rebuild unless parent changes | Rebuilds using setState() |

### In PlantPulse:
We used **StatefulWidget** to update the plant counter dynamically when buttons are pressed.

---

## ⚡ Reactive Rendering in Flutter

Flutter follows a reactive UI model.

When `setState()` is called:

1. The framework marks the widget as needing rebuild.
2. Only the affected widgets are rebuilt.
3. UI updates smoothly without redrawing the entire screen.

Example from PlantPulse:

```dart
void addPlant() {
  setState(() {
    plantCount++;
  });
}
---

## ⚡ Reactive Rendering in Flutter

Flutter follows a reactive UI model.

When `setState()` is called:

1. The framework marks the widget as needing a rebuild.
2. Only the affected widgets in the widget tree are rebuilt.
3. The UI updates efficiently without redrawing the entire screen.

This ensures smooth, optimized, and high-performance UI updates.

---

## 🧠 Dart Fundamentals Used

PlantPulse demonstrates the following key Dart concepts:

- **Classes and Objects** – Everything in Dart is object-oriented.
- **Type Inference (`var`)** – Dart automatically determines variable types.
- **Strong Typing** – Variables have defined data types.
- **Null Safety** – Prevents unexpected null reference errors.
- **State Management with `setState()`** – Enables dynamic UI updates.

Dart is optimized for UI development and integrates seamlessly with Flutter’s reactive architecture.

---

## 💻 Demo Application

The current version of PlantPulse includes:

- 🌱 A dynamic plant counter
- ➕ Add plant functionality
- ➖ Remove plant functionality
- 🔄 Real-time UI updates using `setState()`
- 🌍 Cross-platform execution (Web & Desktop)

---

## 🚀 How to Run the Project

### 1️⃣ Install Flutter  
Ensure Flutter SDK is installed and added to your system PATH.

### 2️⃣ Clone the Repository

```bash
git clone <repository-url>


