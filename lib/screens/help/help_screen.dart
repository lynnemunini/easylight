import 'package:flutter/material.dart';
import 'package:token_app/components/custom_bottom_nav_bar.dart';
import 'package:token_app/enums.dart';

import 'components/body.dart';

class HelpScreen extends StatelessWidget {
  static String routeName = "/help";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Help(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
