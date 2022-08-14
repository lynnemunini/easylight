import 'package:flutter/material.dart';
import '../../../constants.dart';

class Help extends StatelessWidget {
  // Details of how users can reach us
  final String title = "How can we help you?\n\n";
  final String body =
      "We are here to help you with any questions you may have.\n\n"
      "If you have any questions, please feel free to contact us at:\n\n"
      "Email: muninilynne65@gmail.com\n\n"
      "Phone: +254712345678\n\n"
      "We will be happy to help you.\n\n\n";
  final String buttonText = "Contact Us";
  final String buttonRoute = "/profile";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            body,
            style: TextStyle(
              fontSize: 15,
              // Add spaceAround the text
            ),
          ),
          ElevatedButton(
              child: Text(buttonText, style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.pushNamed(context, buttonRoute);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  kPrimaryColor,
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(double.infinity, 50),
                ),
                maximumSize: MaterialStateProperty.all<Size>(
                  Size(double.infinity, 50),
                ),
              )),
        ],
      ),
    );
  }
}
