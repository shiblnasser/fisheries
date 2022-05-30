import 'package:fisheries/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const kPrimarycolor = Color(0xFF0D47A1);
const kPrimaryLightColor = Color(0xFFFFECDF);
const krprimarygradientcolor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]
);

const ksecondaryColor = Color(0xFF979797);
const ktextcolor = Color(0xFF757575);

const kAnimationDuration = Duration(microseconds: 200);


final headingStyle = TextStyle(
    fontSize: getpropotionalscreenwidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5
);



final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";


final otpinputDecoration = InputDecoration(
contentPadding: EdgeInsets.symmetric(vertical: getpropotionalscreenwidth(15)),
enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder()

);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
borderRadius: BorderRadius.circular(15),
borderSide: BorderSide(color: ktextcolor)
);
}