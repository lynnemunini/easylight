import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Recent Payments", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
      ],
    );
  }
}
