import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilitis/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  String bigText;
  String smallText;
  AppDoubleTextWidget({
    Key? key,required this.bigText, required this.smallText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print('u are tapped');
            },
            child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
      ],
    );
  }
}
