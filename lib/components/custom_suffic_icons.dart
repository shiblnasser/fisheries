import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';


class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key, @required this.svgicon,
  }) : super(key: key);
  final String svgicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(
          0,
          getpropotionalscreenwidth(20),
          getpropotionalscreenwidth(20),
          getpropotionalscreenwidth(20)
      ),
      child: SvgPicture.asset(
        svgicon,
        height: getpropotionalscreenwidth(18),
      ),
    );
  }
}
