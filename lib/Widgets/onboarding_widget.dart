import 'package:flutter/material.dart';
import '../Constant/colors.dart';



class OnboardWidget extends StatelessWidget {
  final String imageLocation;
  final String headerText;
  final String subText;

  OnboardWidget({this.imageLocation,this.headerText,this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  <Widget>[
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Image.asset(
              imageLocation,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Text(
                  headerText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24,
                      color: designColor2
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  subText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16,
                      color: designColor6
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}