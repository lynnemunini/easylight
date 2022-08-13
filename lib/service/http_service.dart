import 'dart:convert';
//import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:token_app/screens/sign_in/components/sign_form.dart';
import 'package:token_app/screens/sign_up/components/sign_up_form.dart';
import 'package:http/http.dart' as http;
import 'package:token_app/screens/home/home_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class HttpService {
  static final _client = http.Client();

  static var _loginUrl = Uri.parse('https://easylight.herokuapp.com/login');

  static var _registerUrl =
      Uri.parse('https://easylight.herokuapp.com/register');

  static login(email, password, context) async {
    http.Response response = await _client.post(_loginUrl, body: {
      "email": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      var json = jsonDecode(response.body);

      if (json[0] == 'Login Successful') {
        await EasyLoading.showSuccess(json[0]);
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        EasyLoading.showError(json[0]);
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }

  static register(phoneNumber, email, meterNumber, password, context) async {
    http.Response response = await _client.post(_registerUrl, body: {
      "phoneNumber": phoneNumber,
      "email": email,
      "meterNumber": meterNumber,
      "password": password,
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json[0] == 'User already exists') {
        await EasyLoading.showError(json[0]);
      } else {
        await EasyLoading.showSuccess(json[0]);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }
}
