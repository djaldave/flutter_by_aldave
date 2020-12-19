import 'package:flutter/cupertino.dart';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> _autheticate(
      String email, String password, String urlSegment) async {
    final url =
        "https://identitytoolkit.googleapis.com/v1/$urlSegment?key=AIzaSyDcojQMH0tCcoSE6FIurzau3UrZfwoITv0";
    final response = await http.post(url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }));
    print(json.decode(response.body));
  }

  Future<void> signUp(String email, String password) async {
    return _autheticate(email, password, 'accounts:signUp');
  }

  Future<void> login(String email, String password) async {
    return _autheticate(email, password, 'accounts:signInWithPassword');
  }
}
