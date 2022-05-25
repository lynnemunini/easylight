import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.aquaBlue,
        //textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: const Scaffold(
        body: MyStatefulWidget(), //   <--- image
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'assets/images/thumbs-up.png',
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to the pre-paid tokens service application',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                )),
            Container(
                height: 80,
                padding: const EdgeInsets.fromLTRB(200, 10, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {},
                )),
          ],
        ));
  }
}
