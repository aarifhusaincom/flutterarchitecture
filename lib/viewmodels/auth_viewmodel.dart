import 'package:flutter/material.dart';
import '../services/auth/firebase_auth_service.dart';
import '../models/user_model.dart';

class AuthViewModel extends ChangeNotifier {
  final FirebaseAuthService _firebaseAuthService = FirebaseAuthService();

  UserModel? user;
  bool isLoading = false;
  String? error;

  Future<bool> login(String email, String password) async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      final fbUser = await _firebaseAuthService.loginWithEmail(email, password);
      if (fbUser != null) {
        user = UserModel(uid: fbUser.uid, email: fbUser.email ?? '');
        isLoading = false;
        notifyListeners();
        return true;
      } else {
        error = 'Login failed';
      }
    } catch (e) {
      error = e.toString();
    }

    isLoading = false;
    notifyListeners();
    return false;
  }

  Future<void> logout() async {
    await _firebaseAuthService.logout();
    user = null;
    notifyListeners();
  }
}
