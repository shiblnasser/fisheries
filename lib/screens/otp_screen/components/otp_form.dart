import 'package:fisheries/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class OTPBox extends StatefulWidget {
  @override
  _OTPBoxState createState() => _OTPBoxState();
}

class _OTPBoxState extends State<OTPBox> {
  FocusNode pin2focusnode;
  FocusNode pin3focusnode;
  FocusNode pin4focusnode;
  void initState()
  {
    super.initState();
    pin2focusnode = FocusNode();
    pin3focusnode = FocusNode();
    pin4focusnode = FocusNode();
  }
  void dispose()
  {
    pin2focusnode.dispose();
    pin3focusnode.dispose();
    pin4focusnode.dispose();
    super.dispose();
  }
  void nextfocus({String value, FocusNode focus})
  {
    if(value.length == 1)
      focus.requestFocus();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: getpropotionalscreenwidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration:otpinputDecoration,
                  onChanged: (value){
                    nextfocus(value: value , focus: pin2focusnode);
                  },
                ),
              ),
              SizedBox(
                width: getpropotionalscreenwidth(60),
                child: TextFormField(
                  focusNode: pin2focusnode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration:otpinputDecoration,
                  onChanged: (value){
                    nextfocus(value: value , focus: pin3focusnode);

                  },
                ),
              ),
              SizedBox(
                width: getpropotionalscreenwidth(60),
                child: TextFormField(
                  focusNode: pin3focusnode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration:otpinputDecoration,
                  onChanged: (value){
                    nextfocus(value: value , focus: pin4focusnode);

                  },
                ),
              ),
              SizedBox(
                width: getpropotionalscreenwidth(60),
                child: TextFormField(
                  focusNode: pin4focusnode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration:otpinputDecoration,
                  onChanged: (value){
                    pin4focusnode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: Sizeconfig.screenheight*0.15,),
          DefaultButton(text: 'Continue',press: (){},),

        ],
      ),
    );
  }
}
