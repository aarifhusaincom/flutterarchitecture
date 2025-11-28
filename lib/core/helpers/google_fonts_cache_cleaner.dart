import '../../library.dart';

class GoogleFontsCacheCleaner {
  static Future<Directory?> _findGoogleFontsDir() async {
    final supportDir = await getApplicationSupportDirectory();

    final dirs = [
      Directory("${supportDir.path}/.google_fonts"), // primary
      Directory("${supportDir.path}/fonts"), // fallback
      Directory("${supportDir.path}/google_fonts"), // fallback
    ];

    for (final dir in dirs) {
      if (await dir.exists()) return dir;
    }
    return null;
  }

  /// cleanKeepLast remove all files except last 5
  static Future<void> cleanKeepLast({int keep = 5}) async {
    final dir = await _findGoogleFontsDir();
    if (dir == null) return;

    final files = dir.listSync().whereType<File>().toList();

    if (files.length <= keep) return;

    files.sort((a, b) => a.lastModifiedSync().compareTo(b.lastModifiedSync()));

    final deleteFiles = files.sublist(0, files.length - keep);
    for (final file in deleteFiles) {
      try {
        await file.delete();
        log("aarif - google font cache file deleted");
      } catch (_) {}
    }
  }

  /// fullClean remove all files manually
  static Future<void> fullClean() async {
    final dir = await _findGoogleFontsDir();
    if (dir == null) return;

    try {
      await dir.delete(recursive: true);
    } catch (_) {}
  }

  /// cleanIfCacheTooBig if exceeds cache is more than 10MB
  static Future<void> cleanIfCacheTooBig() async {
    final dir = await _findGoogleFontsDir();
    if (dir == null) return;

    int totalBytes = 0;
    final files = dir.listSync().whereType<File>().toList();

    for (final file in files) {
      totalBytes += file.lengthSync();
    }

    if (totalBytes > 10 * 1024 * 1024) {
      // 10 MB
      await fullClean();
    }
  }
}

/// [use case]
/// AUTO-CLEANING SYSTEM (Recommended)
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // When app starts → keep only last 5 fonts
//   GoogleFontsCacheCleaner.cleanKeepLast(keep: 5);
//
//   runApp(MyApp());
// }

/// Weekly Full Cleanup (if user try 1709 fonts)
// Timer.periodic(
// Duration(days: 7),
// (_) => GoogleFontsCacheCleaner.fullClean(),
// );

/// On-demand cleanup (button)
// ElevatedButton(
//     onPressed: GoogleFontsCacheCleaner.fullClean,
//     child: CenterText("Clear Downloaded Fonts"),
// )
