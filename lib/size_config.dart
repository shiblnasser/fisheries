import 'package:flutter/material.dart';

class Sizeconfig
{
  static MediaQueryData _mediaquerydata;
  static double screenwidth;
  static double screenheight;
  static double defaultsize;
  static Orientation orientation;

  void init(BuildContext context)
  {
    _mediaquerydata = MediaQuery.of(context);
    screenwidth = _mediaquerydata.size.width;
    screenheight = _mediaquerydata.size.height;
    orientation = _mediaquerydata.orientation;
  }
}
double getpropotionalscreenheight(double inputheight)
{
  double screenheight = Sizeconfig.screenheight;
  return(inputheight / 812) * screenheight;
}
double getpropotionalscreenwidth(double inputwidth)
{
  double screenwidth = Sizeconfig.screenwidth;
  return(inputwidth/ 375) * screenwidth;
}