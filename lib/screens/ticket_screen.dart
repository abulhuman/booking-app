import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utilitis/app_info_list.dart';
import 'package:booking/utilitis/app_layout.dart';
import 'package:booking/utilitis/app_styles.dart';
import 'package:booking/utilitis/dot_pointer_widget.dart';
import 'package:booking/utilitis/line_break_widget.dart';
import 'package:booking/utilitis/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilitis/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(20),
            ),
            scrollDirection: Axis.vertical,
            children: [
              Gap(AppLayout.getHeight(50)),
              Text('Tickets',style: Styles.headLineStyle1.copyWith(fontSize: 40),),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous '),
              Gap(AppLayout.getHeight(20)),
              Container(
                // padding: EdgeInsets.only(right: AppLayout.getHeight(15)),
                child: TicketView( singleTicket: ticketList[0],isColor: true
                  ,),
              ),
              Container(
                decoration: BoxDecoration(
                  // color: Colors.red
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(20)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                    )
                ),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15,),
                margin: EdgeInsets.symmetric(horizontal: 15),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passanger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '5221 364B69',
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end,
                        ),

                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    LayoutBreakLine(sections: 15, isColor: true,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '364738 28274478',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                        ),

                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.payment_outlined),
                                Text('****4215', style: Styles.headLineStyle2,)
                              ],
                            ),
                            Gap(5),
                            Text('Payment method', style: Styles.headLineStyle4,)
                          ],
                        ),
                        AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end
                        ),


                      ],
                    ),
                    Container(),
                    Gap(AppLayout.getHeight(30)),
                    Container(

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          data: 'https://github.com/martinovovo',
                          barcode: Barcode.code128(),
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                child: TicketView( singleTicket: ticketList[0], ),
              )

            ],
          ),
          DotPointer(left: 20,),
          DotPointer(right: 20,),

        ],
      ),
    );
  }
}

