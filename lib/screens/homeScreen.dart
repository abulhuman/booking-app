import 'package:booking/screens/hotelScreen.dart';
import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utilitis/app_info_list.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilitis/app_layout.dart';
import '../utilitis/app_styles.dart';
import '../widgets/app_double_text_widget.dart';

class Homesreen extends StatelessWidget {
  const Homesreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(

              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: Styles.headLineStyle3 ,),
                        Gap(AppLayout.getHeight(5)),
                        Text('Book Tickets', style: Styles.headLineStyle1,),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/img1.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text('search',style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText: 'view all')
              ],
            ),


          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((ticket) => TicketView(singleTicket: ticket)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: AppDoubleTextWidget(bigText: "Hotels", smallText: 'view all'),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((singleHotel ) => HotelScreen(hotel: singleHotel)).toList(),
              ))


        ],
      ),
    );
  }
}

