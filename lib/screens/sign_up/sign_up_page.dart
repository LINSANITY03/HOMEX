import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/firebase/flutterfire.dart';
import 'package:web_app/screens/sign_in/main_page.dart';
import 'package:web_app/screens/sign_in/rounded_input_field.dart';
import 'package:web_app/screens/sign_in/rounded_passoword_field.dart';
import 'package:web_app/screens/welcome/rounded_button.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  var _emailField, _passwordField;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'SIGNUP',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Image(
                      image: AssetImage('assets/icons/Group_3.png'),
                      height: size.height * 0.32,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedInputField(
                      hintText: "Enter Your Email",
                      onchanged: (value) {
                        _emailField = value;
                      },
                    ),
                    Rounded_password_field(
                      onchanged: (value) {
                        _passwordField = value;
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 50, //height of button
                            width: 230, //width of button
                            child: rounded_button(
                              hintText: 'SIGNUP',
                              onpress: () async {
                                bool shouldNavigate = await signup(context,
                                    _emailField, _passwordField);
                                if (shouldNavigate) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Mainpage(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ]),
            )));
  }
}
