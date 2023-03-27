import 'dart:html';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hello_word/screens/ticket_view.dart';
import 'package:flutter_hello_word/utils/app_info_list.dart';
import 'package:flutter_hello_word/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = Applayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor ,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20),vertical: Applayout.getWidth(20)),
            children: [
              Gap(Applayout.getHeight(40)),
              Text("Tickets", style: Styles.headLine1Style,),
              Gap(Applayout.getHeight(20)),
              const AppTicketTabs(fistTab:"Upcoming",secondTab: "Previous"),
              Gap(Applayout.getHeight(40)),

              Container(
                padding: EdgeInsets.only(left: Applayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              SizedBox(height: 1,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal:Applayout.getHeight(15) , vertical:Applayout.getWidth(20) ),
                margin: EdgeInsets.symmetric(horizontal:Applayout.getHeight(15) ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "Flutter DB",secondText: "Passenger", alignment: CrossAxisAlignment.start,isColor: true,),
                        AppColumnLayout(firstText: "5367 28943",secondText: "Passport", alignment: CrossAxisAlignment.end,isColor: true),
                       ],
                    ),
                    Gap(Applayout.getHeight(20)),
                    AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5,),
                    Gap(Applayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "1233 23443",secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start,isColor: true,),
                        AppColumnLayout(firstText: "UAGH32",secondText: "Booking code", alignment: CrossAxisAlignment.end,isColor: true),
                      ],
                    ),
                    AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5,),
                    Gap(Applayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png",scale: 11,),
                                Text(" *** 2123",style: Styles.headLine3Style,)
                              ],

                            ),
                            Gap(Applayout.getHeight(5)),
                            Text("Payment method", style: Styles.headLine4Style,)
                          ],
                        ),
                        AppColumnLayout(firstText: "\$213.34",secondText: "Price", alignment: CrossAxisAlignment.end,isColor: true,),

                      ],
                    )

                  ],
                ),
              ),

              /***
               * bar code
               */
              SizedBox(height: 1,),

              Container(
                margin:  EdgeInsets.only(top: Applayout.getHeight(15),bottom: Applayout.getHeight(15)),
                padding: EdgeInsets.only(top: Applayout.getHeight(20),bottom: Applayout.getHeight(20)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(Applayout.getHeight(21))
                  , bottomLeft: Radius.circular(Applayout.getHeight(21)))
                ),
                child:
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Applayout.getHeight(15)),
                    child:    BarcodeWidget(
                      barcode:Barcode.code128(),
                      data: 'https://amber916young.github.io/',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: Applayout.getHeight(70),
                    )
                    ,
                  ),
                ),
              ),


              Gap(Applayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: Applayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
        ],

      )
    );
  }
}
