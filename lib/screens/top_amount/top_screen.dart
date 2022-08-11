import 'package:flutter/material.dart';
import 'package:token_app/components/custom_bottom_nav_bar.dart';
import 'package:token_app/enums.dart';

import 'components/body.dart';

class TopUpScreen extends StatelessWidget {
  static String routeName = "/top_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Up"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
