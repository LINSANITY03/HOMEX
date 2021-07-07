import 'package:flutter/material.dart';
import 'package:web_app/screens/constants.dart';
import 'package:web_app/screens/sign_in/TextFieldContainer.dart';



class Rounded_password_field extends StatelessWidget {
  final ValueChanged<String> onchanged;


  const Rounded_password_field({
    Key? key,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    return TextFieldContainer(
        child: TextField(
          controller: password,
          obscureText: true,
          onChanged: onchanged,
          decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: mainColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: mainColor,
            ),
            border: InputBorder.none,
          ),
        ));
  }
}
