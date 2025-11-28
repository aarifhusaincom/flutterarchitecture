// import 'package:flutter/material.dart';
// import '../app_theme/app_theme.dart';
//
//
// class CustomAppButtonStyles {
//   // PRIMARY BUTTON
//   static ButtonStyle primary = ElevatedButton.styleFrom(
//     backgroundColor: AppTheme.primaryColor,
//     foregroundColor: Colors.white,
//     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//   );
//
//   // SECONDARY BUTTON
//   static ButtonStyle secondary = ElevatedButton.styleFrom(
//     backgroundColor: AppTheme.secondaryColor,
//     foregroundColor: Colors.black,
//     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//   );
//
//   // SUCCESS BUTTON (Green)
//   static ButtonStyle success = ElevatedButton.styleFrom(
//     backgroundColor: AppTheme.successColor,
//     foregroundColor: Colors.white,
//     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//   );
//
//   // DANGER BUTTON (Red)
//   static ButtonStyle danger = ElevatedButton.styleFrom(
//     backgroundColor: AppTheme.dangerColor,
//     foregroundColor: Colors.white,
//     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//   );
//
//   // SMALL BUTTON
//   static ButtonStyle small = ElevatedButton.styleFrom(
//     backgroundColor: AppTheme.primaryColor,
//     foregroundColor: Colors.white,
//     padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//     textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//   );
//
//   // LARGE BUTTON
//   static ButtonStyle large = ElevatedButton.styleFrom(
//     backgroundColor: AppTheme.primaryColor,
//     foregroundColor: Colors.white,
//     padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
//     textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
//   );
//
//   // FULL WIDTH BUTTON
//   static Widget fullWidth(
//       BuildContext context, {
//         required String text,
//         required VoidCallback onPressed,
//       }) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       child: ElevatedButton(
//         style: primary,
//         onPressed: onPressed,
//         child: CenterText(text),
//       ),
//     );
//   }
//
//   // ICON + TEXT BUTTON
//   static ButtonStyle iconButton = ElevatedButton.styleFrom(
//     backgroundColor: AppTheme.primaryColor,
//     foregroundColor: Colors.white,
//     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//     textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//   );
// }
