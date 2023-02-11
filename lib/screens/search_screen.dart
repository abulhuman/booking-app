import 'package:booking/utilitis/ticket_tabs.dart';
import 'package:booking/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilitis/app_layout.dart';
import '../utilitis/app_styles.dart';
import '../widgets/app_double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    bool isItHotel = false;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(15)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\nyou looking for?', style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getWidth(20)),
          AppTicketTabs(firstTab: 'Airlines Ticket', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          icon_text_widget(icon: Icons.flight_takeoff_rounded, text: 'Depatrure'),
          Gap(AppLayout.getHeight(15)),
          icon_text_widget(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
            ),
            child: Center(child: Text('find Tickets',style: Styles.textStyle.copyWith(color: Colors.white),)),
          ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText: 'view all'),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(5),
                    vertical: AppLayout.getHeight(7)),
                height: AppLayout.getHeight(410),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),

                ),
                child: Column(
                  children: [
                    Container(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),

                        width: size.width*0.42,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/images/img1.png'

                            )
                          )
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text("20%\ndiscount \non business \nclass tickets  \nfrom Airline on\nInternational",
                    style: Styles.headLineStyle2,),

                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),

                        width: size.width*0.42,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3aBBBB),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Discount\nfor survey",style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                            Gap(AppLayout.getHeight(5)),
                            Text("Take the\nsurvey about\nour services\nand get\ndiscount",style: Styles.headLineStyle4.copyWith(color: Colors.white)),

                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -20,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all( width: 18, color: Color(0xFF189999),),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width*0.42,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        Text('Take love',textAlign: TextAlign.center,
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 30),
                            ),
                            TextSpan(
                              text: '🤩',
                              style: TextStyle(fontSize: 35),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 30),
                            ),
                          ]
                        ))
                      ],
                    ),
                  )

                ],
              ),


            ],
          )
        ],
      ),
    );
  }
}




