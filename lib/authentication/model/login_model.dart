import 'dart:convert';

class LoginModel {
  String? username;
  String? password;

  LoginModel({this.username, this.password});

  // Converts JSON map to LoginModel
  factory LoginModel.fromMap(Map<String, dynamic> data) => LoginModel(
        username: data['username'] as String?,
        password: data['password'] as String?,
      );

  // Converts LoginModel to JSON map
  Map<String, dynamic> toMap() => {
        'username': username,
        'password': password,
      };

  // Parses JSON string and returns LoginModel object
  factory LoginModel.fromJson(String data) {
    return LoginModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  // Converts LoginModel object to JSON string
  String toJson() => json.encode(toMap());
}
