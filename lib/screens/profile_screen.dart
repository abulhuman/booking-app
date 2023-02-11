import 'package:booking/utilitis/app_layout.dart';
import 'package:booking/utilitis/app_styles.dart';
import 'package:booking/utilitis/column_layout.dart';
import 'package:booking/utilitis/line_break_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/img1.png'
                    )
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets',style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(2)),
                  Text('New-York',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                  ),),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(3),
                      vertical: AppLayout.getHeight(5),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text('Premium status', style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,
                        ),)
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print('your tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor,
                      fontWeight: FontWeight.w300,
                    ),),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider( color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Styles.primaryColor,
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      color: Color(0xFF264CD2),
                      width: 18

                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(25),
                  vertical: AppLayout.getHeight(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                        backgroundColor: Colors.white,
                      child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "You'v got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.all(AppLayout.getWidth(20)),

            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ],

              borderRadius: BorderRadius.circular(AppLayout.getWidth(18))
            ),
            child: Column(
              children: [
                Text(
                  "192802",
                  style: Styles.headLineStyle1.copyWith(fontSize: 45)
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Miles accrued',
                      style: Styles.headLineStyle4,
                    ),
                    Text(
                        '23 May 2021',
                      style: Styles.headLineStyle4,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(10)),
                LayoutBreakLine(sections: 15 , isColor: false,),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(10)),
                Divider( color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24 ", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "McDonal's", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(10)),
                Divider( color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Exuma", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(AppLayout.getHeight(10)),
                Divider( color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(10)),

              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          InkWell(
            onTap: (){
              print('you are tapped from how to get more miles');
            },
            child: Center(
              child: Text(
                'How to get more miles?',
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
