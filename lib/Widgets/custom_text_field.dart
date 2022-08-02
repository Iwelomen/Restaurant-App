import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintTexts;
  final Widget prefixx;

   CustomTextField({this.hintTexts, this.prefixx});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintTexts,
          hintStyle: const TextStyle(fontSize: 20),
          prefix: prefixx,
      ),
    );
  }
}