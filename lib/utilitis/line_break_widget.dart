import 'package:flutter/material.dart';

import 'app_layout.dart';

class LayoutBreakLine extends StatelessWidget {
  final int sections;
  final bool? isColor;
  const LayoutBreakLine({
    Key? key,
    required this.sections,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
            width: AppLayout.getWidth(5),
            height: AppLayout.getHeight(1),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isColor==null? Colors.white: Colors.grey,
              ),
            ),
          )),

        );
      },
    );
  }
}
