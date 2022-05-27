import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import '../../../constants.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {"icon": "assets/icons/Chat bubble Icon.svg", "text": "Messages"},
      {"icon": "assets/icons/services.svg", "text": "Services"},
      {"icon": "assets/icons/help.svg", "text": "Help Center"},
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
            press: () {},
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
              height: getProportionateScreenWidth(60),
              width: getProportionateScreenWidth(60),
              decoration: BoxDecoration(
                color: Color(0xFFE3FCBF).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                icon!,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
