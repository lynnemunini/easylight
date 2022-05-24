import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.aquaBlue,
        //textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: SvgPicture.asset(
          'assets/images/customer.svg',
          height: 300,
          width: 300,
        ),
        //   <--- image
      ),
    );
  }
}
