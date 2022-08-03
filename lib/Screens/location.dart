import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/Constant/colors.dart';
import 'package:restaurant_delivery_app/Widgets/onboarding_button.dart';
import '../Constant/asset_string.dart';
import '../Constant/string_constant.dart';
import '../Widgets/onboarding_widget.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: OnboardWidget(
                imageLocation: illustrationIV,
                headerText: locationHeadingText,
                subText: locationBodyText,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  OnboardButton(
                    buttonText: useCurrentLocationText,
                    color: designColor1,
                    fontSiz: 18,
                    textColor: designColor4,
                  ),
                  OnboardButton(
                    buttonText: setLocationManually,
                    fontSiz: 18,
                    textColor: designColor1,
                  ),
                  const SizedBox(height: 100,),
                  const Expanded(
                    flex: 2,
                    child:  Text(
                      locationStatementText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
