import 'package:flutter/foundation.dart';
import 'dart:convert';

class User {
  final String username;
  final String password;

  User({
    @required this.username,
    @required this.password,
  });

  User.fromJson(Map<String, dynamic> json)
    : username = json['username'],
      password = json['password'];

  Map toJson() =>
    {
      'username': username,
      'password': password,
    };

  String json = jsonEncode(User);


}


