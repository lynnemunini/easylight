import 'package:flutter/material.dart';
import 'package:token_app/routes.dart';
import 'screens/splash/splash_screen.dart';
import 'package:token_app/theme.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

void main() {
  MpesaFlutterPlugin.setConsumerKey("VEQ8Bzo1yPL412E6JoSDvgMEUMnzt5o5");
  MpesaFlutterPlugin.setConsumerSecret("2GdkrWFlApzhqa8F");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
