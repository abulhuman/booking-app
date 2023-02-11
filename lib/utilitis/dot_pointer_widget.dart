import 'package:flutter/material.dart';

import 'app_layout.dart';
import 'app_styles.dart';

class DotPointer extends StatelessWidget {
  final double? left;
  final double? right;
  const DotPointer({
    Key? key, this.left,this.right
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      top: AppLayout.getHeight(295),
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Styles.textColor, width: 2),
        ),
        child: CircleAvatar(
          maxRadius: 5 ,
          backgroundColor: Styles.textColor,

        ),
      ),
    );
  }
}
