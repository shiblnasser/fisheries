import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/constants.dart';
import 'package:fisheries/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
          child: ListView.builder(
              itemCount: 10, itemBuilder: (context, index) => Cart_banner())),
      Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(color: kPrimarycolor.withOpacity(0.3)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
          
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 70,
                              child: Column(
                    children: <Widget>[
                      Text(
                        'Total',
                        style: TextStyle(fontSize: 25,color: Colors.black),
                      ),
                      Text('Rs 3550',
                          style:
                              TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
                              
                    ],
                  
                ),
              ),
              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: kPrimarycolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Check Out',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getpropotionalscreenwidth(20),
                      fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class Cart_banner extends StatelessWidget {
  const Cart_banner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: ksecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/images/splash_1.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Wireless controller fish',
                style: TextStyle(
                    fontSize: getpropotionalscreenheight(20),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Rs499 controller fish',
                style: TextStyle(
                    fontSize: getpropotionalscreenheight(15),
                    color: kPrimarycolor),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Add_Remove(
                    text: "+",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Add_Remove(
                    text: "-",
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  width: 65,
                  height: 30,
                  decoration: BoxDecoration(
                      color: ksecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text('2'),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class Add_Remove extends StatelessWidget {
  const Add_Remove({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: ksecondaryColor.withOpacity(0.1), shape: BoxShape.circle),
      child: Center(
        child: Text(text,
            style: TextStyle(
                fontSize: getpropotionalscreenwidth(20),
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
