import 'package:flutter/material.dart';
import 'package:web_app/screens/constants.dart';

class rounded_button extends StatelessWidget {
  final String hintText;
  final VoidCallback onpress;

  const rounded_button({
    Key? key,
    required this.hintText,
    required this.onpress,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onpress,
      child: Text(
        hintText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
          backgroundColor: MaterialStateProperty.all<Color>(mainColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.white)))),
    );
  }
}
