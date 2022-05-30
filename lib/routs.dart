
import 'package:fisheries/screens/cart/cart.dart';
import 'package:fisheries/screens/complete_profile/complete_profile_screen.dart';
import 'package:fisheries/screens/forget_password/foget_password_screen.dart';
import 'package:fisheries/screens/homepage/homepage.dart';
import 'package:fisheries/screens/login_success/login_success_screen.dart';
import 'package:fisheries/screens/otp_screen/otp_screen.dart';
import 'package:fisheries/screens/sign_in/sign_in_screen.dart';
import 'package:fisheries/screens/sign_up/sign_up_screen.dart';
import 'package:fisheries/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';


final Map<String , WidgetBuilder> routes = {
  Splashscreen.routename:(context) => Splashscreen(),
  SigninScreen.routename:(context)=>SigninScreen(),
  ForgotPasswordScreen.routename:(context)=>ForgotPasswordScreen(),
LoginSuccessScreen.routename:(context)=>LoginSuccessScreen(),
SignUpScreen.routename:(context)=>SignUpScreen(),
CompleteProfileScreen.routename:(context)=>CompleteProfileScreen(),

  OtpScreen.routename:(context)=>OtpScreen(),
  HomePage.routename :(context)=>HomePage(),
  Add_cart.routename:(context) =>Add_cart(),
    

};