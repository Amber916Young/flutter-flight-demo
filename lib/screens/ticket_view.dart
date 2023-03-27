
 // ignore_for_file: prefer_const_constructors
 
 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hello_word/utils/app_layout.dart';
import 'package:flutter_hello_word/utils/app_styles.dart';
import 'package:flutter_hello_word/widgets/column_layout.dart';
import 'package:flutter_hello_word/widgets/thick_container.dart';
import 'package:flutter_hello_word/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {

  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({Key? key, required this.ticket, this.isColor}): super(key : key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: Applayout.getHeight(GetPlatform.isAndroid == true ?167 :175),
      child: Container(
        margin: EdgeInsets.only(right:  Applayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white ,
                borderRadius: BorderRadius.only(topLeft: Radius.circular( Applayout.getHeight(21)),topRight: Radius.circular( Applayout.getHeight(21)))
              ),
              padding: EdgeInsets.all( Applayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor == null ? Styles.headLine3Style.copyWith(color: Colors.white) : Styles.headLine3Style,),
                      Expanded(child: Container()),
                      ThickContainer(isColor: true),
                      Expanded(child: Stack(
                          children:[
                            SizedBox(
                              height:  Applayout.getHeight(24),
                              child: AppLayoutBuilderWidget(sections: 6,)
                            ),
                            
                            Center(child:  Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor == null ?  Colors.white : Color(0xFF8ACCF7),),),)
                           

                          ]
                       
                      )),
                      ThickContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(ticket['from']['name'] ,textAlign: TextAlign.end,style: isColor == null ? Styles.headLine3Style.copyWith(color: Colors.white): Styles.headLine3Style,),
                    ],
                  )
                  
                  ,const Gap(3)
                  ,Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:  Applayout.getWidth(100), child: Text(ticket['from']['name'] , style:  isColor == null ? Styles.headLine4Style.copyWith(color: Colors.white) :Styles.headLine4Style ,),
                      ),
                      Text(ticket['flying_time'] , style: isColor == null ?  Styles.headLine4Style.copyWith(color: Colors.white) : Styles.headLine4Style,),
                      SizedBox(
                        width: Applayout.getWidth(100), child: Text(ticket['to']['code'],textAlign: TextAlign.end, style:  isColor == null ?  Styles.headLine4Style.copyWith(color: Colors.white) : Styles.headLine4Style  ,),
                      ),
                    ],
                  )
                
                
                ]
              ),
            )
          
          


             /**orange part */
            ,Container(
              color:  isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children:  [
                  SizedBox(
                    height:  Applayout.getHeight(20),
                    width:  Applayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:  isColor == null ? Colors.grey.shade200 : Colors.white,
                          borderRadius: BorderRadius.only(
                          topRight: Radius.circular( Applayout.getHeight(10)),
                          bottomRight: Radius.circular(Applayout.getHeight(10))
                        )
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(decoration: BoxDecoration(
                              color: isColor == null ? Colors.grey.shade300 :Colors.white
                            )),
                          )),
                        );
                    })

                  )),
                 
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:  isColor == null ? Colors.grey.shade200 : Colors.white,
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      ),
                    ),
                  ) 



                ],
              ),
            )
          

            ,Container(
              decoration: BoxDecoration(
                color:  isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular( isColor == null ? 21 : 0),bottomRight: Radius.circular( isColor == null ? 21 : 0))
              ),
              padding: const EdgeInsets.only(left: 16, top: 16,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     AppColumnLayout(
                         firstText: ticket['date'],
                         secondText: "DATE",
                         alignment: CrossAxisAlignment.start,
                         ),

                      AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: "Departure",
                          alignment: CrossAxisAlignment.center,
                          ),

                      AppColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: "number",
                          alignment: CrossAxisAlignment.end,
                         ),

                    ],
                  ),
                
                ],
              ),






            )
          ]
          ),
      ),
    );
  }
}