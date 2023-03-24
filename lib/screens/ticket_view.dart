
 // ignore_for_file: prefer_const_constructors
 
 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hello_word/utils/app_layout.dart';
import 'package:flutter_hello_word/utils/app_styles.dart';
import 'package:flutter_hello_word/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
    
  final Map<String, dynamic> ticket;

  const TicketView({Key? key, required this.ticket}): super(key : key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: Applayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right:  Applayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular( Applayout.getHeight(21)),topRight: Radius.circular( Applayout.getHeight(21)))
              ),
              padding: EdgeInsets.all( Applayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],style: Styles.headLine3Style.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                          children:[
                            SizedBox(
                              height:  Applayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints){
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth() / 6).floor(), (index) => 
                                    SizedBox( width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                    ),),)
                                    ),
                                  );
                                },
                              )
                            ),
                            
                            Center(child:  Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color:  Colors.white,),),)
                           

                          ]
                       
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticket['from']['name'] ,textAlign: TextAlign.end,style: Styles.headLine3Style.copyWith(color: Colors.white),),
                    ],
                  )
                  
                  ,const Gap(3)
                  ,Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:  Applayout.getWidth(100), child: Text(ticket['from']['name'] , style: Styles.headLine4Style.copyWith(color: Colors.white),),
                      ),
                      Text(ticket['flying_time'] , style: Styles.headLine4Style.copyWith(color: Colors.white),),
                      SizedBox(
                        width: Applayout.getWidth(100), child: Text(ticket['to']['code'],textAlign: TextAlign.end, style: Styles.headLine4Style.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                
                
                ]
              ),
            )
          
          


             /**orange part */
            ,Container(
              color: Styles.orangeColor,
              child: Row(
                children:  [
                  SizedBox(
                    height:  Applayout.getHeight(20),
                    width:  Applayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
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
                              color: Colors.white
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
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(left: 16, top: 16,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(ticket['date'],style: Styles.headLine3Style.copyWith(color: Colors.white),),
                          const  Gap(5),
                          Text("DATE" ,style: Styles.headLine4Style.copyWith(color: Colors.white),),
                        ]
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text(ticket['departure_time'],style: Styles.headLine3Style.copyWith(color: Colors.white),),
                          const  Gap(5),
                          Text("Departure time" ,style: Styles.headLine4Style.copyWith(color: Colors.white),),
                        ]
                      ),
                          
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:[
                          Text(ticket['number'].toString(),style: Styles.headLine3Style.copyWith(color: Colors.white),),
                          const  Gap(5),
                          Text("Number" ,style: Styles.headLine4Style.copyWith(color: Colors.white),),
                        ]
                      )
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