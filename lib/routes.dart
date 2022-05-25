import 'package:flutter/widgets.dart';
import 'package:token_app/screens/details/details_screen.dart';
import 'package:token_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:token_app/screens/home/home_screen.dart';
import 'package:token_app/screens/profile/profile_screen.dart';
import 'package:token_app/screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
