import 'package:flutter/material.dart';
import 'package:token_app/routes.dart';
//import 'package:shop_token_app/screens/profile/profile_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'package:token_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SignUpScreen.routeName,
      routes: routes,
    );
  }
}
