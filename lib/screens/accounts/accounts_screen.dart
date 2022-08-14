import 'package:flutter/material.dart';
import 'package:token_app/components/custom_bottom_nav_bar.dart';
import 'package:token_app/enums.dart';

import 'components/body.dart';

class AccountsScreen extends StatelessWidget {
  static String routeName = "/acounts";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Details"),
      ),
      body: Accounts(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
