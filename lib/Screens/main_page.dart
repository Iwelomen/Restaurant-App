import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/Constant/asset_string.dart';

import 'package:restaurant_delivery_app/Constant/colors.dart';
import 'package:restaurant_delivery_app/Constant/string_constant.dart';

import '../Widgets/rounded_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedButton(
                    icon: const Icon(
                      Icons.person_outline,
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 35),
                  const Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'Delivered to\n',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: designColor6),
                      ),
                      TextSpan(
                        text: 'Leonard   ∨',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: designColor7),
                      ),
                    ]),
                  ),
                  const SizedBox(width: 40),
                  RoundedButton(
                    icon: const Icon(
                      Icons.search_outlined,
                      size: 40,
                    ),
                  ),
                  RoundedButton(
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 38),
              const Text(
                letsEatText,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 18),
              Stack(children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, top: 20.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.favorite_outline,
                          color: designColor4,
                        ),
                        SizedBox(height: 10),
                        Text(
                          restaurantOfTheWeekText,
                          style: TextStyle(
                            color: designColor4,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          hengbokRestaurantText,
                          style: TextStyle(
                              color: designColor9,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 9),
                        CircleAvatar(
                            backgroundColor: designColor4,
                            child: Icon(
                              Icons.arrow_forward,
                            ))
                      ],
                    ),
                  ),
                  height: 153,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: designColor1,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                    right: -5,
                    top: 20,
                    child: Image.asset(
                      restaurantOfTheWeekFood,
                      fit: BoxFit.fitWidth,
                      width: 190,
                    )),
              ]),
              SizedBox(height: 18),
              Text(
                whatAreYouCraving,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
