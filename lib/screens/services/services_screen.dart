import 'package:flutter/material.dart';
import 'package:token_app/components/custom_bottom_nav_bar.dart';
import 'package:token_app/enums.dart';

import 'components/body.dart';

class ServicesScreen extends StatelessWidget {
  static String routeName = "/services";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Services"),
      ),
      body: Services(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
