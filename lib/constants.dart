import 'package:flutter/material.dart';
import 'package:token_app/size_config.dart';

const kPrimaryColor = Color(0xFF14C38E);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF14c38e),
    Color(0xFF0fce94),
    Color(0xFF08d999),
    Color(0xFF03e59f),
    Color(0xFF00f0a4),
    Color(0xFF38f4a5),
    Color(0xFF51f8a6),
    Color(0XFF64fca8),
    Color(0XFF81f9a8),
    Color(0XFF97f7a9),
    Color(0XFFa9f4ac),
    Color(0XFFb8f1b0)
  ],
);
//background-image: linear-gradient(to right top, #14c38e, #0fce94, #08d999, #03e59f, #00f0a4, #38f4a5, #51f8a6, #64fca8, #81f9a8, #97f7a9, #a9f4ac, #b8f1b0);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
