import 'dart:ffi';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.backgroundColor, required this.textColor, this.fontSize, this.borderRadius});
  
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius; // This can be nullable
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12)
          )
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
          fontSize: fontSize,
          color: textColor,
          fontWeight: FontWeight.w900
          )
        ),
      ),
    );
  }
}