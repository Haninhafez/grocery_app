import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static const String userId = 'userId';
  static const String userName = 'userName';
  static const String userEmail = 'userEmail';
  static const String isLoggedIn = 'isLoggedIn';
  late SharedPreferences prefs;

  Future<void> saveLogin({
    required String userId,
    required String userName,
    required String userEmail,
    required bool isLoggedIn,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(LocalStorage.userId, userId);
    await prefs.setString(LocalStorage.userName, userName);
    await prefs.setString(LocalStorage.userEmail, userEmail);
    await prefs.setBool(LocalStorage.isLoggedIn, isLoggedIn);
  }

  Future<bool> isUserLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(LocalStorage.isLoggedIn) ?? false;
  }

  Future<String?> getName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(LocalStorage.userName);
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
