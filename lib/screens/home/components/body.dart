import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'balance_banner.dart';
import 'home_header.dart';
import 'services.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Services(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
