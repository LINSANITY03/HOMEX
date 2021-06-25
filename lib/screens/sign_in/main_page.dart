import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/screens/sign_in/AlreadyHaveAnAccount.dart';
import 'package:web_app/screens/sign_in/rounded_input_field.dart';
import 'package:web_app/screens/sign_in/rounded_passoword_field.dart';
import 'package:web_app/screens/sign_up/sign_up_page.dart';
import 'package:web_app/screens/welcome/rounded_button.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'LOGIN',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Image(
                      image: AssetImage('assets/icons/Group 1.png'),
                      height: size.height * 0.4,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedInputField(
                      hintText: "Enter Your Email",
                      onchanged: (value) {},
                    ),
                    Rounded_password_field(
                      onchanged: (value) {},
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 50, //height of button
                            width: 230, //width of button
                            child: rounded_button(
                              hintText: 'LOGIN',
                              onpress: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    AlreadyHaveAnAccount(press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sign_up())
                      );
                    },),
                  ]),
            )));
  }
}

