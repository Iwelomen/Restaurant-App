import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Widget icon;

   RoundedButton({this.icon});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25),),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(1, 1)
            )
          ]
      ),
      child: icon,

    );
  }
}