import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/Constant/colors.dart';
import 'package:restaurant_delivery_app/Constant/string_constant.dart';
import 'package:restaurant_delivery_app/Widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 116,
            ),
            Text(
              createNewAcctText,
              style: TextStyle(
                color: designColor3,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            CustomTextField(
              hintTexts: nameText,
              prefixx: const Icon(
                Icons.person,
                color: designColor4,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            CustomTextField(
              hintTexts: phoneNumberText,
              prefixx: Icon(
                Icons.phone,
                color: designColor4,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            CustomTextField(
              hintTexts: emailText,
              prefixx: Icon(
                Icons.email_outlined,
                color: designColor4,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            CustomTextField(
              hintTexts: passwordText,
              prefixx: Icon(
                Icons.lock,
                color: designColor4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
