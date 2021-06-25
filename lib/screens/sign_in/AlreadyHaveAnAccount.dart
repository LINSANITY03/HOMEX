import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/screens/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;

  const AlreadyHaveAnAccount({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ?" : "Already have an account ? ",
          style: TextStyle(color: mainColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign Up' : 'sign In',
            style: TextStyle(color: mainColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
