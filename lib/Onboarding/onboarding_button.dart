import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Constant/constant.dart';

class OnboardButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final Color textColor;
  final double fontSiz;

   OnboardButton({this.buttonText, this.color, this.textColor, this.fontSiz});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 273,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30.0),
            ),
            color: color,
          ),
          child:  Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 4.0),
            child: Center(
              child: Text(
                buttonText,
                style:   TextStyle(
                    fontSize: fontSiz,
                    fontWeight: FontWeight.w500,
                    color: textColor),
              ),
            ),
          ),
        ),

      ],
    );
  }
}