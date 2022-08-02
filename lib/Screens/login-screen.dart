import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/Constant/colors.dart';
import 'package:restaurant_delivery_app/Constant/string_constant.dart';
import 'package:restaurant_delivery_app/Onboarding/onboarding_button.dart';
import 'package:restaurant_delivery_app/Screens/create_new_account.dart';

import '../Widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 116),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
            child: Column(
              children: [
                const Text(
                  loginText,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 73),
                CustomTextField(
                  hintTexts: emailText,
                  prefixx: const Text('  '),
                ),
                const SizedBox(height: 73),
                CustomTextField(
                  hintTexts: passwordText,
                  prefixx: const Text('  '),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(),
                    Text(
                      forgetPasswordText,
                      style: TextStyle(
                        color: designColor2,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                OnboardButton(
                  buttonText: signInText,
                  color: designColor1,
                  textColor: designColor4,
                  fontSiz: 17,
                ),
                const SizedBox(height: 27),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: noAccountText,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: designColor6),
                      ),
                      TextSpan(
                          text: signUpText,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: designColor2))
                    ]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
