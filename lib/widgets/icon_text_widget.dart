import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilitis/app_layout.dart';
import '../utilitis/app_styles.dart';

class icon_text_widget extends StatelessWidget {
  final IconData icon ;
  final String text;
  const icon_text_widget({
    required this.icon,required this.text

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(12),
        horizontal: AppLayout.getHeight(12),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
      ),
      child: Row(
        children: [
          Icon( icon, color: Color(0xFFBFC2DF),),
          Gap(AppLayout.getHeight(10)),
          Text(text,style: Styles.textStyle,)
        ],
      ),
    );
  }
}