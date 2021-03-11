import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class AuthClass with ChangeNotifier{

  String token,userId;
  DateTime expiryOfToken;

  Future<void> signUp(String email,password,) async{
    final url = "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[API_KEY]";
    await http.post(url, body: json.encode({
    "email": email,
  "password": password,
 "returnSecureToken": true
      }));
  }
}