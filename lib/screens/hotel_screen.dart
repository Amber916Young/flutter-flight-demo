import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hello_word/utils/app_layout.dart';
import 'package:flutter_hello_word/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {

  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key , required this.hotel}): super(key : key);


  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
      width: Applayout.getWidth(size.width*0.6) ,
      height: Applayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
      margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Applayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}")
                )
            ),
          )
          , const Gap(15),
          Text(
            hotel['place'],
            style: Styles.headLine2Style.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
           hotel['destination'],
            style: Styles.headLine3Style.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLine1Style.copyWith(color: Styles.kakiColor),
          ),
        ]
      ),
    );
  }
}

class $ {
}