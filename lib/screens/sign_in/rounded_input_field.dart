import 'package:flutter/material.dart';
import 'package:web_app/screens/constants.dart';
import 'package:web_app/screens/sign_in/TextFieldContainer.dart';




class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchanged;


  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onchanged,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        onChanged: onchanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: mainColor,
          ),
          hintText: hintText,
        ),

      ),
    );
  }
}

