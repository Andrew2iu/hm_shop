import 'package:shared_preferences/shared_preferences.dart';
import 'package:hm_shop/constants/index.dart';

class TokenManager {
  Future<SharedPreferences> _getInstance() {
    return SharedPreferences.getInstance();
  }

  String _token = "";
  Future<void> init() async {
    // 初始化token
    final prefs = await _getInstance();
    _token = prefs.getString(GlobalConstants.TOKEN_KEY) ?? "";
  }

  // 初始化token
  Future<void> setToken(value) async {
    final prefs = await _getInstance();
    prefs.setString(GlobalConstants.TOKEN_KEY, value);
    _token = value;
  }

  String getToken() {
    return _token;
  }

  Future<void> removeToken() async {
    // 移除token
    final prefs = await _getInstance();
    prefs.remove(GlobalConstants.TOKEN_KEY);
    _token = "";
  }
}

final TokenManager tokenManager = TokenManager();
