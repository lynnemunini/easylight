import 'package:flutter/material.dart';
import 'package:token_app/screens/home/home_screen.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A list of services that the company provides.
    final services = [
      "Accounts",
      "Top Up",
      "Transactions",
    ];
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(services[index]),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        );
      },
    );
  }
}
