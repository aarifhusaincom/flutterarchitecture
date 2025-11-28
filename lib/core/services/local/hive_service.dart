import '../../../library.dart';

class HiveService {
  static bool _isInitialized = false;

  /// Initialize Hive (Call this once in main.dart)
  static Future<void> init() async {
    if (_isInitialized) return;

    final appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);

    _isInitialized = true;
  }

  /// Open Box
  static Future<Box> openBox(String boxName) async {
    if (!_isInitialized) {
      await init();
    }
    return await Hive.openBox(boxName);
  }

  /// Write Data
  static Future<void> write({
    required String boxName,
    required String key,
    required dynamic value,
  }) async {
    final box = await openBox(boxName);
    await box.put(key, value);
  }

  /// Read Data
  static Future<dynamic> read({
    required String boxName,
    required String key,
  }) async {
    final box = await openBox(boxName);
    return box.get(key);
  }

  /// Delete data by key
  static Future<void> delete({
    required String boxName,
    required String key,
  }) async {
    final box = await openBox(boxName);
    await box.delete(key);
  }

  /// Clear entire box
  static Future<void> clearBox(String boxName) async {
    final box = await openBox(boxName);
    await box.clear();
  }

  /// Close Hive (optional)
  static Future<void> close() async {
    await Hive.close();
  }
}
