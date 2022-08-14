import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import '../../../constants.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {"icon": "assets/icons/all-inclusive.png", "text": "Your Accounts"},
      {"icon": "assets/icons/services.png", "text": "Services"},
      {"icon": "assets/icons/help.png", "text": "Help Center"},
    ];

    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          services.length,
          (index) => ServiceCard(
            icon: services[index]["icon"],
            text: services[index]["text"],
            press: () {
              if (index == 0) {
                Navigator.pushNamed(context, '/accounts');
              } else if (index == 1) {
                Navigator.pushNamed(context, '/services');
              } else if (index == 2) {
                Navigator.pushNamed(context, '/help');
              }
            },
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
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
