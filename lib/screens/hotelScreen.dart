import 'package:booking/utilitis/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilitis/app_styles.dart';
import '../utilitis/app_info_list.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hotelInfo = hotelList;
    final size = AppLayout.getSize( context);
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Container(
        width: size.width*0.6,
        height: AppLayout.getHeight(350),
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(17)),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20,
                spreadRadius: 10,
              )
            ],
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),

                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(

                    'assets/images/' + hotel['image'],

                  )
                )
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Text( hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
            Gap(AppLayout.getHeight(5)),
            Text( hotel['destination'],
              style: Styles.headLineStyle2.copyWith(color: Colors.white),),
            Gap(AppLayout.getHeight(8)),
            Text('\$' + hotel['price'].toString() + '/night',
              style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),)

          ],
        ),
      ),
    );
  }
}
