class Validators {
  static String? name(String? value) {
    final firstChar = value!.trim()[0];
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    } else if (firstChar != firstChar.toUpperCase()) {
      return 'First letter must be uppercase';
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }
}
