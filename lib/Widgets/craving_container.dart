import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Constant/string_constant.dart';

class CravingsContainer extends StatelessWidget {
  final Image cravingImage;
  final String cravingText;

  CravingsContainer({this.cravingImage, this.cravingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: 65,
      decoration: const BoxDecoration(
          color: designColor4,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: designColor5,
            )
          ]
      ),
      child: Column(
        children: [
          const SizedBox(height: 7),
          Expanded(
            flex: 2,
            child: cravingImage,
          ),
          const SizedBox(height: 10),
          const Expanded(
            flex: 1,
            child: Text(
              pizzaText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: Container(
              height: 16,
              width: 16,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: designColor6,
              ),
              child: const Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: designColor4,
                  )),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}