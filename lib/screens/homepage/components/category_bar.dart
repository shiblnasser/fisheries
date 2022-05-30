import 'package:flutter/material.dart';

import '../../../constants.dart';
class Categorybar extends StatelessWidget {
  const Categorybar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
                child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: <Widget>[
    ...List.generate(4, (index) => Category_btn(icon: 'assets/images/soda_bottle.png',))
          ],
        ),
      ),
    );
  }
}

class Category_btn extends StatelessWidget {
  const Category_btn({
    Key key, this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: (){},
                      child: Container(
      padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: ksecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Image.asset(icon)
        ),
    );
  }
}

