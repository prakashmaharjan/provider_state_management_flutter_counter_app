# Flutter Counter App With Provider State Management


A simple Flutter Counter application built using **MVVM architecture** and **Provider state management**.  
This project demonstrates clean separation of concerns using Model, View, and ViewModel layers. i.e MVVM. This is the project I created during learning phase of my flutter journey.

---
🔧 Getting Started
1. Clone the repository
git clone https://github.com/prakashmaharjan/provider_statemangement_flutter_counter_app.git
2. Install dependencies
flutter pub get
3. Run the app
flutter run

## 🛠️ Tech Stack
- Flutter
- Dart
- Provider (State Management
- MVVM Architecture

## 🚀 Features

- Increment counter
- Decrement counter
- Reset counter
- MVVM architecture pattern
- Provider for state management
- Immutable data model
- Clean project structure

---

## 🧱 Architecture

This project follows **MVVM (Model–View–ViewModel)** architecture:


---

## 📦 State Management

This project uses **Provider**:

- `ChangeNotifierProvider` → Injects ViewModel into widget tree  
- `ChangeNotifier` → Notifies UI when state changes  
- `notifyListeners()` → Triggers UI rebuild  
-  https://pub.dev/packages/provider

---

## 🧠 How It Works

1. App starts in `main.dart`
2. `CounterViewModel` is provided using `ChangeNotifierProvider`
3. UI (`CounterView`) listens to ViewModel
4. User interacts with buttons
5. ViewModel updates state
6. UI automatically rebuilds

---
