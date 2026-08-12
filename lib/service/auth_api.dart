import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stepper/model/user.dart';

class AuthResult {
  final User user;
  final String accessToken;
  final String refreshToken;

  AuthResult({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
  });
}

class AuthException {
  final String message;

  AuthException(this.message);

  @override
  String toString() {
    return message;
  }
}

class AuthApi {
  static const baseUrl = "https://dummyjson.com";

  Future<AuthResult> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/login'),
      headers: {'Content_Type': 'application/json'},
      body: jsonEncode({'username': username, "password": password}),
    );

    if (response.statusCode != 200) {
      var body = jsonDecode(response.body);
      throw AuthException(body['message'] ?? 'Login failed');
    }

    var json = jsonDecode(response.body);
    return AuthResult(
      user: User.fromJson(json),
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );
  }
}
