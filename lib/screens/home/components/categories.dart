import 'package:flutter/material.dart';
import 'package:token_app/screens/top_amount/top_screen.dart';
import 'package:token_app/screens/monitor/mon_screen.dart';
import 'package:token_app/screens/statement/statement_screen.dart';

import '../../../size_config.dart';
import '../../../constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(90),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(65),
              width: getProportionateScreenWidth(65),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                icon!,
                color: Color(0xFF125B50),
              ),
            ),
            //SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/analysis.png", "text": "Usage"},
      {"icon": "assets/icons/statement.png", "text": "Statement"},
      {"icon": "assets/icons/topup.png", "text": "Top-Up"},
    ];

    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {
              if (categories[index]["text"] == "Top-Up") {
                Navigator.pushNamed(context, TopUpScreen.routeName);
              } else if (categories[index]["text"] == "Usage") {
                Navigator.pushNamed(context, MonitorScreen.routeName);
              } else if (categories[index]["text"] == "Statement") {
                Navigator.pushNamed(context, StatementScreen.routeName);
              }
            },
          ),
        ),
      ),
    );
  }
}
