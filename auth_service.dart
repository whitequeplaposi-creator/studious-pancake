import 'package:flutter/foundation.dart';
import 'api_service.dart';

class AuthService extends ChangeNotifier {
  final ApiService _apiService;
  String? _token;
  Map<String, dynamic>? _user;
  
  AuthService(this._apiService);
  
  bool get isAuthenticated => _token != null;
  Map<String, dynamic>? get user => _user;
  
  Future<bool> login(String email, String password) async {
    try {
      final response = await _apiService.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
      
      if (response.statusCode == 200) {
        _token = response.data['token'];
        _user = response.data['user'];
        notifyListeners();
        return true;
      }
      return false;
    } catch (e) {
      print('Login error: $e');
      return false;
    }
  }
  
  Future<bool> register(String email, String password) async {
    try {
      final response = await _apiService.post('/auth/register', data: {
        'email': email,
        'password': password,
      });
      
      if (response.statusCode == 201) {
        _token = response.data['token'];
        _user = response.data['user'];
        notifyListeners();
        return true;
      }
      return false;
    } catch (e) {
      print('Register error: $e');
      return false;
    }
  }
  
  Future<void> logout() async {
    _token = null;
    _user = null;
    notifyListeners();
  }
}
