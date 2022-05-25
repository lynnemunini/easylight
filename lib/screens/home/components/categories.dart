import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Usage"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Statement"},
      //{"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Chat bubble Icon.svg", "text": "Messages"},
      {"icon": "assets/icons/Settings.svg", "text": "Services"},
      {"icon": "assets/icons/Question mark.svg", "text": "Help Center"},
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
            press: () {},
          ),
        ),
      ),
    );
  }
}

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
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFE3FCBF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
