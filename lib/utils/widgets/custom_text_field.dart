import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.abovetext,
      required this.hintText,
      required this.width,
      required this.padding,
      this.keyboard});
  String abovetext;
  String hintText;
  double width;
  double padding;
  TextInputType? keyboard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: padding),
          child: Text(
            abovetext,
            style: const TextStyle(
                fontFamily: kRoboto, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: width,
          child: TextField(
            keyboardType: keyboard,
            cursorColor: const Color(0xff5F5F5F),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffD8DADC),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(color: kGreyColor),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffD8DADC),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
