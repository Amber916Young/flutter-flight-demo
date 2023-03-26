import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hello_word/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = Applayout.getSize(context);

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20),vertical: Applayout.getWidth(20)),
            children: [
              Gap(Applayout.getHeight(40)),
              Text("Tickets", style: Styles.headLine1Style,),
              Gap(Applayout.getHeight(20)),
              const AppTicketTabs(fistTab:"Upcoming",secondTab: "Previous"),

            ],
          ),
        ],

      )
    );
  }
}
