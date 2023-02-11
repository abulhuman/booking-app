import 'package:flutter/material.dart';

import 'app_layout.dart';
import 'app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({
    Key? key,
    required this.firstTab,
    required this.secondTab

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final  size = AppLayout.getSize(context);
  return FittedBox(
  child: Container(
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
  color: const Color(0xFFF4F6FD),
  ),
  child: Row(
  children: [
  /*
            Airlines Container
             */
  Container(
  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.only(
  topLeft: Radius.circular(AppLayout.getHeight(50)),
  bottomLeft: Radius.circular(AppLayout.getHeight(50))),
  color: Colors.white,
  ),
  width: size.width*.44,
  child: Center(child: Text(firstTab,style: Styles.textStyle,)),
  ),
  /*
            Hotels Container
             */
  Container(
  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.only(
  topRight: Radius.circular(AppLayout.getHeight(50)),
  bottomRight: Radius.circular(AppLayout.getHeight(50))),
  color: Colors.transparent,
  ),
  width: size.width*.44,
  child: Center(child: Text(secondTab,style: Styles.textStyle,)),
  ),

  ],
  ),

  ),
  );
  }
}