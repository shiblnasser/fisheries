import 'package:fisheries/components/custom_suffic_icons.dart';
import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/components/form_error.dart';
import 'package:fisheries/screens/forget_password/foget_password_screen.dart';
import 'package:fisheries/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height:getpropotionalscreenheight(30),),
          buildPasswordFormField(),
          SizedBox(height: getpropotionalscreenheight(30),),
          Row(
            children: <Widget>[
              Checkbox(
                value: remember,
                activeColor: kPrimarycolor,
                onChanged: (value)
                {
                  setState(() {
                    remember=value;
                  });
                },
              ),
              Text("Remember Me"),
              Spacer(),
              GestureDetector(
                onTap: ()=>Navigator.pushNamed(context, ForgotPasswordScreen.routename),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      decoration: TextDecoration.underline
                  ),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getpropotionalscreenheight(20),),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState.validate())
              {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routename);
              }
            },
          ),

        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) =>password = newValue,
      onChanged: (value)
      {
        if(value.isNotEmpty && errors.contains(kPassNullError))
        {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
        else if(value.length >=8 && errors.contains(kShortPassError))
        {
          setState(() {
            errors.remove(kShortPassError);
          });
          return "";
        }

        return null;
      },
      validator: (value)
      {
        if(value.isEmpty && !errors.contains(kPassNullError))
        {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        }
        else if(value.length<8 && !errors.contains(kShortPassError))
        {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/Lock.svg",
          )
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value)
      {
        if(value.isNotEmpty && errors.contains(kEmailNullError))
        {
          setState(() {
            errors.remove(kEmailNullError);
          });

        }
        else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError))
        {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value)
      {
        if(value.isEmpty && !errors.contains(kEmailNullError))
        {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        }
        else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError))
        {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/Mail.svg",
          )
      ),
    );
  }
}

