import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../Widgets/rounded_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedButton(
                icon: const Icon(
                  Icons.person_outline,
                  size: 40,
                ),
              ),
              const SizedBox(width: 35),
              const Text(
                'Delivered to',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
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
        ),
      ),
    );
  }
}
