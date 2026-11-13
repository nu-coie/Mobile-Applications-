import 'package:flutter/material.dart';

abstract class reusableCol extends StatelessWidget {
   reusableCol({required this.Num, required this.Btitle});

  final String Num;
  final String Btitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Num,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          Btitle,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );;
  }
}
