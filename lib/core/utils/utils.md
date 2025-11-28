Flutter project me **helpers** aur **utils** folders ka purpose thoda different hota hai. Main
best-practice structure niche simple language me de raha hoon 👇

---

# ✅ **helpers folder me kya rakhein?**

Helpers wo files hoti hain jisme **ready-made reusable functions**, **services**, ya **shortcuts**
hote hain.

### 📁 **helpers/**

| File                     | Purpose                                                      |
|--------------------------|--------------------------------------------------------------|
| `navigation_helper.dart` | Push, pop, pushReplacement jaise common navigation shortcuts |
| `dialog_helper.dart`     | Common dialogs (alert, loader, bottom sheet)                 |
| `snackbar_helper.dart`   | Snackbar show karne ka central function                      |
| `date_time_helper.dart`  | Date format, time ago, etc.                                  |
| `permission_helper.dart` | Camera, location, storage permissions wrapper                |
| `api_helper.dart`        | API calling shortcuts (GET/POST wrapper etc.)                |
| `validation_helper.dart` | Email/phone validation, empty string check                   |
| `logger_helper.dart`     | Debug logs, error logs wrapper                               |
| `location_helper.dart`   | GPS fetch, distance calculation helpers                      |

### ✔ Helpers = *functional shortcuts*

* Pure functions
* Stateless
* App me kahi bhi use ho jaye

---

# ✅ **utils folder me kya rakhein?**

Utils me woh files rakhi jaati hain jo **constant data**, **formatters**, **theme related**, *
*extensions**, etc. handle karti hain.

### 📁 **utils/**

| File                       | Purpose                                                 |
|----------------------------|---------------------------------------------------------|
| `constants.dart`           | App constants (appName, version, default padding, etc.) |
| `app_colors.dart`          | App theme colors                                        |
| `app_text_styles.dart`     | Common text styles                                      |
| `app_assets.dart`          | Image paths, SVG paths                                  |
| `responsive_util.dart`     | Screen size-based scaling                               |
| `debouncer.dart`           | Search typing delay logic                               |
| `throttle.dart`            | Prevent double taps                                     |
| `extensions.dart`          | String, Widget, BuildContext extensions                 |
| `validators.dart`          | Regex validation (if helper me nahi dali)               |
| `secure_storage_util.dart` | Encrypted storage wrappers                              |
| `storage_paths.dart`       | App directories (cache, temp, downloads folder)         |

### ✔ Utils = *supporting utilities*

* Data + static classes
* App-wide constants
* Conversions, formatting

---

# 📌 **Easiest Rule to Remember**

### 👉 **Helpers = Kaam karwane wali files (actions)**

### 👉 **Utils = App ko support karne vali files (data + tools)**

---

# 🎯 Want perfect folder structure for your project?

Agar tum chaho to me tumhare project type ke hisaab se **complete directory structure** bana du (
TikTok-like video app, e-commerce, chat app, real-estate—jo bhi ho).

Perfect! Tumhare liye **production-level professional Flutter folder structure** bana raha hoon —
simple, clean, scalable, TikTok-style, chat-style, e-commerce, har project me fit.
(Ye industry-standard MVVM + Clean Architecture based hai)

---

# 🚀 **Final Best Flutter Folder Structure**

---

# 📁 **lib/**

```
lib/
 ├── config/
 ├── core/
 ├── data/
 ├── domain/
 ├── presentation/
 ├── utils/
 ├── helpers/
 ├── services/
 ├── widgets/
 └── main.dart
```

---

# 🟦 1. **config/**

App-level configuration.

| File            | Purpose                             |
|-----------------|-------------------------------------|
| env.dart        | Base URLs, API keys, flavor configs |
| app_router.dart | Named route setup                   |
| app_theme.dart  | ThemeData, light/dark theme         |

---

# 🟧 2. **core/**

Primitive things used everywhere.

| File              | Purpose               |
|-------------------|-----------------------|
| failure.dart      | Error handling model  |
| exceptions.dart   | Custom exceptions     |
| network_info.dart | Internet connectivity |

---

# 🟨 3. **data/**

API, local DB, repository implementations.

```
data/
 ├── models/
 ├── datasources/
 │     ├── remote/
 │     └── local/
 ├── repositories/
```

### Example

| Folder             | Purpose                                |
|--------------------|----------------------------------------|
| models             | JSON models like UserModel, VideoModel |
| datasources/remote | API calls                              |
| datasources/local  | Hive/SharedPref local DB               |
| repositories       | Domain repository implementation       |

---

# 🟩 4. **domain/**

Business logic rules (pure Dart).

| Item         | Purpose                                |
|--------------|----------------------------------------|
| entities     | Clean models (no JSON)                 |
| usecases     | login(), fetchVideos(), uploadStatus() |
| repositories | Abstract class                         |

---

# 🟦 5. **presentation/**

UI + State Management

```
presentation/
 ├── pages/
 ├── viewmodels/  // provider / Riverpod / bloc
 ├── controllers/
 ├── components/  // page-specific widgets
```

Examples:

* login_page.dart
* home_page.dart
* video_feed_page.dart
* chat_page.dart

---

# 🟪 6. **widgets/**

Global reusable widgets.

| File               | Purpose                     |
|--------------------|-----------------------------|
| custom_button.dart | Reusable button             |
| custom_loader.dart | Loader                      |
| network_image.dart | Cached network image widget |

---

# 🟫 7. **helpers/**

Kaam karwane wali files (actions).

| File                   | Purpose                 |
|------------------------|-------------------------|
| navigation_helper.dart | Push/pop shortcuts      |
| snackbar_helper.dart   | Snackbar                |
| dialog_helper.dart     | Dialogs                 |
| date_time_helper.dart  | Date utils              |
| api_helper.dart        | API wrapper (if needed) |
| permission_helper.dart | Permissions wrapper     |

---

# 🟪 8. **utils/**

Data, constants, extensions, formatters.

| File                 | Purpose                                 |
|----------------------|-----------------------------------------|
| app_colors.dart      | Color constants                         |
| app_text_styles.dart | Text styles                             |
| app_assets.dart      | Icons/images paths                      |
| constants.dart       | App-wide constants                      |
| extensions.dart      | String, Widget, BuildContext extensions |
| debouncer.dart       | Search debouncer                        |

---

# 🟥 9. **services/**

Background services.

| File                            | Purpose               |
|---------------------------------|-----------------------|
| local_notification_service.dart | Notifications         |
| location_service.dart           | GPS tracking          |
| download_service.dart           | File downloads        |
| video_cache_service.dart        | Pre-cache video files |

---

# 🎉 BONUS

Agar tum chaho to me **complete folder template** bana kar de du ZIP-ready format me.

### Options:

1. **MVVM Provider version**
2. **MVVM Riverpod version**
3. **BLoC Clean Architecture version**
4. **Simple scalable version** (beginner-friendly)

Bas ek bolo:
👉 **Kaunsa architecture chahiye?** (Provider / Riverpod / Bloc / Simple)
Great! Niche tumhare liye **Provider architecture ke saath complete production-level Flutter folder
structure + template** ready kar raha hoon — aesa jo tum seedha project me copy-paste karke use kar
sakte ho.

---

# 🚀 **Provider Architecture – Final Folder Structure**

```
lib/
 ├── config/
 │     ├── app_theme.dart
 │     ├── app_router.dart
 │     └── env.dart
 │
 ├── core/
 │     ├── exceptions.dart
 │     ├── failures.dart
 │     └── network_info.dart
 │
 ├── data/
 │     ├── models/
 │     ├── datasources/
 │     │     ├── remote/
 │     │     └── local/
 │     └── repositories/
 │
 ├── domain/
 │     ├── entities/
 │     ├── usecases/
 │     └── repositories/
 │
 ├── presentation/
 │     ├── pages/
 │     ├── viewmodels/
 │     └── components/
 │
 ├── widgets/
 ├── helpers/
 ├── utils/
 ├── services/
 └── main.dart
```

---

# 🟦 **1. config/**

Global settings.

### `config/app_theme.dart`

```dart
class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.blue,
  );
}
```

### `config/app_router.dart`

```dart
class AppRouter {
  static const home = '/';
  static const login = '/login';
}
```

---

# 🟧 **2. core/**

Error handling, network checks.

### `core/failures.dart`

```dart
class Failure {
  final String message;

  Failure(this.message);
}
```

---

# 🟨 **3. data/**

Repository implementations + API/Hive layers.

## Structure:

```
data/
 ├── models/user_model.dart
 ├── datasources/remote/auth_api.dart
 ├── datasources/local/auth_local.dart
 └── repositories/auth_repository_impl.dart
```

### Example Model:

```dart
class UserModel {
  final String id;
  final String name;

  UserModel({required this.id, required this.name});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(id: json['id'], name: json['name']);
}
```

---

# 🟩 **4. domain/**

Pure Dart business logic.

```
domain/
 ├── entities/user.dart
 ├── repositories/auth_repository.dart
 └── usecases/login_usecase.dart
```

Example:

```dart
class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<User> call(String phone) => repository.login(phone);
}
```

---

# 🟦 **5. presentation/**

UI + Providers (ViewModels).

```
presentation/
 ├── pages/
 │     ├── login_page.dart
 │     └── home_page.dart
 ├── components/
 └── viewmodels/
       └── login_viewmodel.dart
```

### **ViewModel Example (Provider):**

```dart
class LoginViewModel extends ChangeNotifier {
  final LoginUseCase loginUseCase;

  LoginViewModel(this.loginUseCase);

  bool loading = false;

  Future<void> login(String phone) async {
    loading = true;
    notifyListeners();

    await loginUseCase(phone);

    loading = false;
    notifyListeners();
  }
}
```

### **Page Example:**

```dart
class LoginPage extends StatelessWidget {
  final phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<LoginViewModel>();

    return Scaffold(
      body: Column(
        children: [
          TextField(controller: phoneCtrl),
          if (vm.loading) CircularProgressIndicator(),
          ElevatedButton(
            onPressed: () => vm.login(phoneCtrl.text),
            child: CenterText("Login"),
          ),
        ],
      ),
    );
  }
}
```

---

# 🟪 **6. widgets/**

Global reusable widgets.

| File               | Purpose                        |
|--------------------|--------------------------------|
| custom_button.dart | Same styling button everywhere |
| app_loader.dart    | Circular loader                |
| empty_view.dart    | Empty state widget             |

---

# 🟫 **7. helpers/**

Actions / shortcuts.

| File                   | Purpose             |
|------------------------|---------------------|
| navigation_helper.dart | push/pop functions  |
| snackbar_helper.dart   | showSnackBar()      |
| dialog_helper.dart     | loader dialog       |
| date_helper.dart       | format dates        |
| permission_helper.dart | request permissions |

---

# 🟫 **Example: `navigation_helper.dart`**

```dart
class Nav {
  static void to(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  static void back(BuildContext context) {
    Navigator.pop(context);
  }
}
```

---

# 🟩 **8. utils/**

Constants + extensions.

| File            | Purpose              |
|-----------------|----------------------|
| app_colors.dart | Colors               |
| app_assets.dart | Images               |
| extensions.dart | String, BuildContext |
| constants.dart  | App constants        |
| debouncer.dart  | For search bar       |

---

# 🟧 **9. services/**

Background logic.

| File                      | Purpose       |
|---------------------------|---------------|
| location_service.dart     | GPS tracking  |
| notification_service.dart | Local push    |
| download_service.dart     | File download |
| video_cache_service.dart  | Pre-caching   |

---

# 🎁 Want Me To Generate The WHOLE Structure as REAL Files?

I can generate **all folders + empty files + basic code inside every file** — ZIP-ready.

### Bas batao:

👉 **Kis type ka project generate karu?**

* Video App (TikTok style)
* Chat App
* E-commerce
* Real Estate
* Status Saver App
* Koi aur?
