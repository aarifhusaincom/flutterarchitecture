import '../../../library.dart';

class AuthApiService {
  final _client = ApiClient();

  Future<Response> login(String email, String password) {
    return _client.post(
      ApiEndpoints.login,
      data: {'email': email, 'password': password},
    );
  }

  Future<Response> getProfile() {
    return _client.get(ApiEndpoints.profile);
  }
}
