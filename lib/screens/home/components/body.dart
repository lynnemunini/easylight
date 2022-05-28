import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'balance_banner.dart';
import 'home_header.dart';
import 'services.dart';
import 'transactions.dart';
import 'transaction_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            Services(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Transactions(),
            transaction_card(),
          ],
        ),
      ),
    );
  }
}
