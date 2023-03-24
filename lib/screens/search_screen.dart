import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hello_word/utils/app_layout.dart';
import 'package:flutter_hello_word/utils/app_styles.dart';
import 'package:flutter_hello_word/widgets/icon_text_widget.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);

    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: Applayout.getWidth(20),
              vertical: Applayout.getHeight(20)),
          children: [
            Gap(Applayout.getHeight(40)),
            Text("what are \n you looking for?",
              style: Styles.headLine1Style.copyWith(
                  fontSize: Applayout.getWidth(35)),),
            Gap(Applayout.getHeight(20)),
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                child: Row(
                  children: [
                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: Applayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(Applayout.getWidth(50))),
                          color: Colors.white
                      ),
                      child: Center(child: Text("Airline tickets")),
                    ),

                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: Applayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(Applayout.getWidth(50))),
                          color: Colors.transparent
                      ),
                      child: Center(child: Text("Hotels")),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        Applayout.getHeight(50)),
                    color: const Color(0xFFF4F6FD)
                ),
              ),),
            Gap(Applayout.getHeight(25)),

            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(Applayout.getHeight(15)),

            const AppIconText(
                icon: Icons.flight_land_rounded, text: "Departure"),


            Gap(Applayout.getHeight(25)),

            Container(
              padding: EdgeInsets.symmetric(horizontal: Applayout.getWidth(18),
                  vertical: Applayout.getHeight(12)),
              decoration: BoxDecoration(
                  color: Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(Applayout.getWidth(10))),
              child: Center(
                child: Text("find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),),
              ),
            ),
            Gap(Applayout.getHeight(25)),

            const AppDoubleTextWidgets(
                bigText: "Upcoming Filghts", smallText: "View all"),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: Applayout.getHeight(400),
                  width: size.width * .42,
                  padding: EdgeInsets.symmetric(
                      horizontal: Applayout.getHeight(15),
                      vertical: Applayout.getHeight(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          Applayout.getHeight(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: Applayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Applayout.getHeight(20)),
                            image: const DecorationImage(image:
                            AssetImage("assets/images/sit.jpg")
                            )
                        ),
                      ),
                      Gap(Applayout.getHeight(10)),
                      Text(
                          "20% widget does not have an onTap property you need to create as show below by wrkW",
                          style: Styles.headLine2Style)
                    ],
                  ),
                ),

                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * .44,
                          height: Applayout.getHeight(200),
                          decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  Applayout.getHeight(18))
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: Applayout.getHeight(15),
                              horizontal: Applayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\n for survey",
                                style: Styles.headLine2Style.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),),
                              Gap(Applayout.getHeight(10)),
                              Text(
                                "property you need to create as show below by wrapping the widget ",
                                style: Styles.headLine2Style.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),)
                            ],
                          ),
                        ),
                        Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                              padding: EdgeInsets.all(Applayout.getHeight(30)),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 18, color: Color(0xFF189999)),
                                  color: Colors.transparent
                              ),
                            ))
                      ],
                    ),

                    Container(
                      width: size.width * .44,
                      height: Applayout.getHeight(200),
                      decoration: BoxDecoration(
                          color: Color(0xFFFF7531),
                          borderRadius: BorderRadius.circular(
                              Applayout.getHeight(18))
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: Applayout.getHeight(15),
                          horizontal: Applayout.getHeight(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Discount\n for survey",
                            style: Styles.headLine2Style.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          Gap(Applayout.getHeight(10)),
                          Text(
                            "property you need to create as show below by wrapping the widget ",
                            style: Styles.headLine2Style.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),)
                        ],
                      ),
                    )


                  ],
                )


              ],
            )

          ],
        )

    );
  }
}