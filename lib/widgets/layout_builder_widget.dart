import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final double width;
  final int sections;
  const AppLayoutBuilderWidget({Key? key,this.isColor,required this.sections, this.width = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth() / sections).floor(), (index) =>
              SizedBox( width: width, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey.shade300
              ),),)
          ),
        );
      },
    );
  }
}
