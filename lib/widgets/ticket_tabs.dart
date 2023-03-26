import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs  extends StatelessWidget {
  final String fistTab ;
  final String secondTab ;

  const AppTicketTabs({Key? key , required this.fistTab,  required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);


    return FittedBox(
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
              child: Center(child: Text(fistTab)),
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
              child: Center(child: Text(secondTab)),
            ),

          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                Applayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)
        ),
      ),);
  }
}
