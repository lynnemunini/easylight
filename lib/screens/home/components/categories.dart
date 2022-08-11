import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

import '../../../size_config.dart';
import '../../../constants.dart';
import 'dart:async';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(90),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(65),
              width: getProportionateScreenWidth(65),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                icon!,
                color: Color(0xFF125B50),
              ),
            ),
            //SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  // Method that will initiate Mpesa Payment
  Future<void> lipaNaMpesa() async {
    dynamic transactionInitialisation;
    try {
      transactionInitialisation =
          await MpesaFlutterPlugin.initializeMpesaSTKPush(
              businessShortCode: "174379",
              transactionType: TransactionType.CustomerPayBillOnline,
              amount: 1.0,
              partyA: "254790901668",
              partyB: "174379",
              //Lipa na Mpesa Online ShortCode
              callBackURL: Uri(
                  scheme: "https",
                  host: "mpesa-requestbin.herokuapp.com",
                  path: "/10tpvzc1"),
              //This url has been generated from http://mpesa-requestbin.herokuapp.com/?ref=hackernoon.com for test purposes
              accountReference: "EasyLight",
              phoneNumber: "254790901668",
              baseUri: Uri(scheme: "https", host: "sandbox.safaricom.co.ke"),
              transactionDesc: "purchase",
              passKey:
                  "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919");
      //This passkey has been generated from Test Credentials from Safaricom Portal
      print("TRANSACTION RESULT: " + transactionInitialisation.toString());
      return transactionInitialisation;
    } catch (e) {
      print("CAUGHT EXCEPTION: " + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/analysis.png", "text": "Usage"},
      {"icon": "assets/icons/statement.png", "text": "Statement"},
      {"icon": "assets/icons/topup.png", "text": "Top-Up"},
    ];

    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {
              if (categories[index]["text"] == "Top-Up") {
                // Call lipaNaMpesa method to initiate Mpesa Payment
                lipaNaMpesa();
              }
            },
          ),
        ),
      ),
    );
  }
}
