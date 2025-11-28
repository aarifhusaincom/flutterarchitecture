import '../library.dart';

class AppAuthProvider extends ChangeNotifier {
  final TextEditingController _phoneController = TextEditingController();
  final FirebaseAuthService _firebaseAuthService = FirebaseAuthService();
  UserModel? user;
  String? error;

  String _verificationId = '';

  String get verificationId => _verificationId;

  set verificationId(String value) {
    _verificationId = value;
    notifyListeners();
  }

  String _currentPhone = '';

  String get currentPhone => _currentPhone;

  set currentPhone(String value) {
    _currentPhone = value;
    notifyListeners();
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  User? get currentUser => _firebaseAuthService.currentUser;

  Stream<User?> get authStateChange => _firebaseAuthService.authStateChange;

  Future<UserCredential> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    UserCredential userCredential = await _firebaseAuthService
        .signInWithEmailPassword(email: email, password: password);
    notifyListeners();
    return userCredential;
  }

  Future<UserCredential> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserCredential userCredential = await _firebaseAuthService
        .createUserWithEmailAndPassword(email: email, password: password);
    notifyListeners();
    return userCredential;
  }

  /// reset the password of the user
  Future<void> sendPasswordResetEmail({required String email}) async {
    await _firebaseAuthService.sendPasswordResetEmail(email: email);
    notifyListeners();
  }

  /// update the Username of the user
  Future<void> updateDisplayName({required String username}) async {
    await currentUser!.updateDisplayName(username);
    notifyListeners();
  }

  /// delete the user account
  Future<void> deleteAccount({
    required String email,
    required String password,
  }) async {
    _firebaseAuthService.deleteAccount(email: email, password: password);
  }

  /// reset the password of the user after login
  Future<void> resetPasswordFromCurrentPassword({
    required String currentPassword,
    required String newPassword,
    required String email,
  }) async {
    _firebaseAuthService.resetPasswordFromCurrentPassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
      email: email,
    );
  }

  Future<UserCredential?> signInWithGoogle() async {
    final UserCredential? userCredential = await _firebaseAuthService
        .signInWithGoogle();
    return userCredential;
  }

  Future<void> verifyPhoneNumberAndSendOtp() async {
    _firebaseAuthService.verifyPhoneNumber(phone: _phoneController.text);
    notifyListeners();
  }

  Future<UserCredential> signInUsingOtp(String textOTP) async {
    final PhoneAuthCredential credential = await _firebaseAuthService
        .credential(textOTP);
    final UserCredential userCredential = await _firebaseAuthService
        .userCredentialUsingPhoneAuthCredential(credential);
    notifyListeners();
    return userCredential;
  }

  Future<void> signOut() async {
    _firebaseAuthService.signOut();
    notifyListeners();
  }
}
