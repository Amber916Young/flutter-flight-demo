import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;

  const AppColumnLayout(
      {Key? key, required this.firstText, required this.secondText
        , required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: isColor == null ? Styles.headLine3Style.copyWith(color: Colors.white):Styles.headLine3Style,),
        Gap(Applayout.getHeight(5)),
        Text(secondText,style: isColor == null ? Styles.headLine4Style.copyWith(color: Colors.white):Styles.headLine4Style,),
      ],);
  }
}
