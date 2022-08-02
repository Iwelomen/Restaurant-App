import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_delivery_app/Onboarding/onboarding_bloc.dart';

import '../Constant/asset_string.dart';
import '../Constant/colors.dart';
import '../Constant/constant.dart';
import 'onboarding_button.dart';
import '../Widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int pageLength = 3;

  int bottomSelectedIndex = 0;

  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final onboardBloc = BlocProvider.of<OnboardBloc>(context);
    return Scaffold(
      backgroundColor: designColor4,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            PageView(
              controller: pageController,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                OnboardWidget(
                  imageLocation: illustrationI,
                  headerText: onboardFirstHeaderText,
                  subText: onboardFirstSubText,
                ),
                OnboardWidget(
                  imageLocation: illustrationII,
                  headerText: onboardSecondHeaderText,
                  subText: onboardSecondSubText,
                ),
                OnboardWidget(
                  imageLocation: illustrationIII,
                  headerText: onboardThirdHeaderText,
                  subText: onboardThirdSubText,
                ),
              ],
              onPageChanged: (value) {
                pageChanged(value);
                onboardBloc.add(
                    OnboardEvent(value: value, status: EventStatus.ONCHANGE));
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BlocBuilder<OnboardBloc, int>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            DotsIndicator(
                              decorator: const DotsDecorator(
                                  activeColor: designColor7,
                                  color: designColor8),
                              dotsCount: pageLength,
                              position: state.toDouble(),
                            ),
                            const SizedBox(height: 50),
                            // state.toString() == "2"
                            InkWell(
                              onTap: () {
                                bottomSelectedIndex += 1;
                                pageController.animateToPage(
                                    bottomSelectedIndex,
                                    duration: const Duration(milliseconds: 100),
                                    curve: Curves.linear);
                              },
                              child: OnboardButton(
                                buttonText: continueText,
                                textColor: designColor4,
                                fontSiz: 30,
                                color: designColor1,
                              ),
                            ),

                            const SizedBox(
                              height: 8,
                            ),

                            OnboardButton(
                              buttonText: skipText,
                              fontSiz: 15,
                              textColor: designColor22,
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
