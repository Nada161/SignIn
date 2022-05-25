import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Icon? suffixIcon;

  const CustomTextFormField({Key? key, this.hintText, this.suffixIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,right:19 ),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),),
        child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
        suffixIconColor: Color(0xff969696),
        filled: true,
        fillColor: Color(0xffF6F6F6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
    hintText: '$hintText',
    hintStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xff969696),
        ),
      )),
    ));
  }
}
