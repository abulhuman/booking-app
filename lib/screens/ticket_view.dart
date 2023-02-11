
import 'package:booking/utilitis/app_layout.dart';
import 'package:booking/utilitis/app_styles.dart';
import 'package:booking/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilitis/line_break_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> singleTicket;
  final bool? isColor;
  const TicketView({Key? key, required this.singleTicket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.9,
      height: AppLayout.getHeight(169),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
        child: Container(
          // margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
          child: Column(

            children: [
              /*
              showing blue part of the card
              */
              Container(
                decoration: BoxDecoration(
                  color: isColor!=null? Colors.white: Color(0xFF526799),
                  borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))
                ),

                padding:  EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Text( singleTicket['from']["code"], style: isColor!=null? Styles.headLineStyle3: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        Spacer(),
                        ThickContainer(isColor: isColor!=null?true:null),
                        Expanded(child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  print('The width is ${constraints.constrainWidth()}');
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                        width: 2,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor!=null? Styles.textColor: Colors.white,
                                          ),
                                        ))),
                                  );
                                },

                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(Icons.local_airport_rounded, color: isColor!=null? Colors.grey.shade500 : Colors.white,)),
                            ),

                          ],

                        ),
                        ),

                        ThickContainer(isColor: isColor!=null?true:null),
                        Spacer(),
                        Text(singleTicket['to']['code'], style: isColor!=null? Styles.headLineStyle3:  Styles.headLineStyle3.copyWith(color: Colors.white,),)
                      ],
                    ),
                    Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: AppLayout.getWidth(100),
                        child: Text(singleTicket['from']['name'],style: isColor!=null? Styles.headLineStyle4:  Styles.headLineStyle4.copyWith(color: Colors.white),)),
                        Text(singleTicket['flying_time'],style: isColor!=null? Styles.headLineStyle3: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        SizedBox(
                            width: AppLayout.getWidth(100) ,
                            child: Text(singleTicket['to']['name'],textAlign: TextAlign.end,style: isColor!=null? Styles.headLineStyle4: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                      ],
                    )
                  ],
                ),
              ),
              /*
              showing orange part of the card
              */
              Container(

                color: isColor!=null? Colors.white: Styles.orangeColor,
                child: Row(
                  children: [
                    SizedBox(
                       height: AppLayout.getHeight(20), width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)),
                            bottomRight: Radius.circular(AppLayout.getHeight(10)),
                          )
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding:  EdgeInsets.all(AppLayout.getHeight(11)),
                      child: const LayoutBreakLine(sections: 15,),
                    )),
                    SizedBox(
                       height: AppLayout.getHeight(20), width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              /*
              bottom part orange card/ticket
               */
              Container(
                padding: const EdgeInsets.only( left: 16,top: 10, right: 16,bottom: 16),
                decoration: BoxDecoration(
                    color: isColor!=null? Colors.white: Styles.orangeColor,
                    borderRadius:  BorderRadius.only(
                        bottomLeft: isColor!=null?Radius.circular(AppLayout.getHeight(0)): Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: isColor!=null?Radius.circular(AppLayout.getHeight(0)): Radius.circular(AppLayout.getHeight(21)),),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(singleTicket['date'], style: isColor!=null? Styles.headLineStyle3: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            Gap(AppLayout.getHeight(5)),
                            Text('DATE', style: isColor!=null? Styles.headLineStyle4: Styles.headLineStyle4.copyWith(color: Colors.white),)
                          ],
                        ),
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(singleTicket['departure_time'], style: isColor!=null? Styles.headLineStyle3: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            Gap(AppLayout.getHeight(5)),
                            Text('Departure time', style: isColor!=null? Styles.headLineStyle4:Styles.headLineStyle4.copyWith(color: Colors.white),)
                          ],
                        ),
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(singleTicket['number'].toString(), style: isColor!=null? Styles.headLineStyle3: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            Gap(AppLayout.getHeight(5)),
                            Text('Number', style: isColor!=null? Styles.headLineStyle4: Styles.headLineStyle4.copyWith(color: Colors.white),)
                          ],
                        ),

                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

