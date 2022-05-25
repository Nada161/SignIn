import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? l,r,t,b;
  const CustomText({Key? key, this.text, this.textSize, this.fontWeight, this.color, this.l, this.r, this.t, this.b}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: l!,right: r!,top: t!,bottom: b!),
      child: Text(
        '$text',
        style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontSize: textSize,
        ),
      ),
    );
  }
}
