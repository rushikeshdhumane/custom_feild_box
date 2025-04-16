class CustomFieldBoxSecurity {
  static String? _securityKey;
  static const String _validKey = "UC_Custom_Feild_Box"; // Replace with your actual key

  static void setKey(String key) {
    _securityKey = key;
  }

  static bool get isValid => _securityKey == _validKey;
}