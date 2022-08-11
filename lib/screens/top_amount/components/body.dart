import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';
import 'dart:async';

class Body extends StatelessWidget {
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
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          AmountCard(
            text: "Ksh. 1.00",
            press: () => {
              lipaNaMpesa(),
            },
          ),
          AmountCard(
            text: "Ksh. 2.00",
            press: () {
              lipaNaMpesa();
            },
          ),
          AmountCard(
            text: "Ksh. 3.00",
            press: () {
              lipaNaMpesa();
            },
          ),
          AmountCard(
            text: "Ksh. 4.00",
            press: () {
              lipaNaMpesa();
            },
          ),
          AmountCard(
            text: "Ksh. 5.00",
            press: () {
              lipaNaMpesa();
            },
          ),
          AmountCard(
            text: "Ksh. 6.00",
            press: () {
              lipaNaMpesa();
            },
          ),
        ],
      ),
    );
  }
}
