# 🚀 ChallengeApp

ChallengeApp adalah aplikasi berbasis Flutter.  
Project ini bisa dijalankan di Android, iOS, maupun Web dengan mengikuti langkah-langkah berikut.

---

## 📦 Clone Repository

1. Pertama, clone project dari GitHub:

```bash
git clone https://github.com/fanes-setiawan/ChallengeApp.git
```
2. Lalu masuk ke folder project:
```
cd ChallengeApp
```

## ⚙️ Install Dependency

3. Jalankan perintah berikut untuk mengunduh semua dependency yang diperlukan:
```
flutter pub get
```
## ▶️ Menjalankan Aplikasi

4. Untuk menjalankan aplikasi di perangkat/emulator:
```
flutter run
```

5. Jika ingin menentukan device tertentu (misalnya Android emulator):
```
flutter run -d emulator-5554
```

6. 🛠️ Build Aplikasi

7. Build APK (Android):
```
flutter build apk --release

```

## 📂 Struktur Project

Secara umum, struktur folder pada project ini adalah:

```
main.dart
│
├───core
│ │ app_export.dart
│ │
│ ├───const
│ │ app_color.dart
│ │ asset_icon.dart
│ │ asset_image.dart
│ │
│ └───utils
│ dummy_data.dart
│ image_svg.dart
│
├───features
│ ├───bloc
│ │ └───bloc_loaderboard
│ │ leaderboard_bloc.dart
│ │ leaderboard_event.dart
│ │ leaderboard_state.dart
│ │
│ ├───data
│ │ comunity.dart
│ │ user_score.dart
│ │
│ ├───presentation
│ │ leaderboard_page.dart
│ │
│ ├───repository
│ │ leaderboard_repository.dart
│ │
│ └───widgets
│ leaderboard_content.dart
│ leaderboard_sheet.dart
│ show_sheet.dart
│
├───routes
├───theme
│ appbar_style.dart
│ background_style.dart
│ text_style.dart
│
└───widgets
    custom_button_text_sheet.dart
    custom_card.dart
    custom_card_user.dart
    custom_podium.dart
```
## 📋 Persyaratan

Flutter SDK (versi terbaru)

Android Studio / VSCode dengan plugin Flutter

Emulator Android / iOS, atau perangkat fisik untuk testing

👨‍💻 Author

Developed by Fanes Setiawan
🔗 GitHub Repository


---

Apakah Anda mau saya tambahkan juga **preview screenshot** di README (misalnya dari hasil capture aplikasi), atau cukup instruksi saja? 

berikut link demo : https://youtu.be/LEEXOFZFnn4
