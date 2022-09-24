import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  String text;
  Function func;

  CustomBtn({required this.func, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24)),
      onPressed: () {
        func();
      },
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
