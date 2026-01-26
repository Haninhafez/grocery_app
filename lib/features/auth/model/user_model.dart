class UserModel {
  String? email;
  String? password;
  String? firstName;
  String? lastName;

  String get fullName => '$firstName $lastName';
}
