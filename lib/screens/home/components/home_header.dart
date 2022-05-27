import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:token_app/screens/profile/profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/menu.svg",
              color: kPrimaryColor,
            ),
            onPressed: () =>
                Navigator.pushNamed(context, ProfileScreen.routeName),
          ),
          Text(
            "Hello, Lynne",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                //color: kPrimaryColor,
                fontSize: 16),
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: kPrimaryColor,
            ),
            onPressed: () =>
                Navigator.pushNamed(context, ProfileScreen.routeName),
          ),
        ],
      ),
    );
  }
}
