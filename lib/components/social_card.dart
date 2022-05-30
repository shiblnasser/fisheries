import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key, this.icon, this.press,
  }) : super(key: key);
  final String icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getpropotionalscreenwidth(10)),
        padding: EdgeInsets.all(getpropotionalscreenwidth(9)),
        height: getpropotionalscreenheight(40),
        width: getpropotionalscreenwidth(40),
        decoration:BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF5F6F9)
        ),
        child: SvgPicture.asset(icon,),

      ),
    );
  }
}