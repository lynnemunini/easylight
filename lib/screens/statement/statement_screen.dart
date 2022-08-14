import 'package:flutter/material.dart';
import 'package:token_app/components/custom_bottom_nav_bar.dart';
import 'package:token_app/enums.dart';

import 'components/body.dart';

class StatementScreen extends StatelessWidget {
  static String routeName = "/statement";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recent Transactions"),
      ),
      body: Statement(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
