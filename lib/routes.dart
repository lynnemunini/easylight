import 'package:flutter/widgets.dart';
import 'package:token_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:token_app/screens/home/home_screen.dart';
import 'package:token_app/screens/profile/profile_screen.dart';
import 'package:token_app/screens/sign_in/sign_in_screen.dart';
import 'package:token_app/screens/splash/splash_screen.dart';
import 'screens/monitor/mon_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/top_amount/top_screen.dart';
import 'screens/statement/statement_screen.dart';
import 'screens/accounts/accounts_screen.dart';
import 'screens/services/services_screen.dart';

// All routes are available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  TopUpScreen.routeName: (context) => TopUpScreen(),
  MonitorScreen.routeName: (context) => MonitorScreen(),
  StatementScreen.routeName: (context) => StatementScreen(),
  AccountsScreen.routeName: (context) => AccountsScreen(),
  ServicesScreen.routeName: (context) => ServicesScreen()
};
