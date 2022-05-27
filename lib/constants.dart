import 'package:flutter/material.dart';
import 'package:token_app/size_config.dart';

const kPrimaryColor = Color(0xFF14C38E);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF006a71),
    Color(0xFF007b7c),
    Color(0xFF008b85),
    Color(0xFF009c8b),
    Color(0xFF00ad8e),
    Color(0xFF00b992),
    Color(0xFF0dd296),
    Color(0xFF07dd9c),
    Color(0xFF02e8a1),
    Color(0xFF00f4a6),
    Color(0xFF00ffab),
    Color(0XFFe3fcbf)
  ],
);
//background-image: linear-gradient(to right top, #006a71, #007b7c, #008b85, #009c8b, #00ad8e, #00b992, #00c694, #0dd296, #07dd9c, #02e8a1, #00f4a6, #00ffab);
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
