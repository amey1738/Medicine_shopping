
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static SharedPreferences? instance;
  static const String userId = 'USERID';
  static const String roleId = 'ROLE_ID';
  static const String roleName = 'ROLE_NAME';
  static const String loginToken = 'LOGIN_TOKEN';
  static const String addressID = 'ADDRESS_ID';

  static Future<void> setPreferences() async {
    instance = await SharedPreferences.getInstance();
  }

  static Future<bool> clear() {
    return Preferences.instance!.clear();
  }

  static Future<bool> setUserId(String value) {
    return Preferences.instance!.setString(userId, value);
  }

  static dynamic getUserId() {
    return Preferences.instance!.get(userId);
  }

  static Future<bool> setUserToken(String value) {
    return Preferences.instance!.setString(loginToken, value);
  }

  static dynamic getUserToken() {
    return Preferences.instance!.get(loginToken);
  }

  static Future<bool> setRoleID(String value) {
    return Preferences.instance!.setString(roleId, value);
  }

  static dynamic getRoleID() {
    return Preferences.instance!.get(roleId);
  }

  static Future<bool> setRoleName(String value) {
    return Preferences.instance!.setString(roleName, value);
  }

  static dynamic getRoleName() {
    return Preferences.instance!.get(roleName);
  }

  static Future<bool> setAddressId(String value) {
    return Preferences.instance!.setString(addressID, value);
  }

  static dynamic getAddressId() {
    return Preferences.instance!.get(addressID);
  }

  ///Singleton factory
  static final Preferences _instance = Preferences._internal();
  factory Preferences() {
    return _instance;
  }
  Preferences._internal();
}
