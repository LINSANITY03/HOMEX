import 'package:flutter/material.dart';
import 'package:web_app/screens/sign_in/main_page.dart';
import 'package:web_app/screens/welcome/rounded_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          textSection,
          SizedBox(
            height: 25,
          ),
          Container(
            child: Image(
              image: AssetImage('assets/images/icon.png'),
              fit: BoxFit.contain,
            ),
            padding: EdgeInsets.all(30),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50, //height of button
                  width: 230, //width of button
                  child: rounded_button(hintText: 'Get Started', onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mainpage()),
                    );
                  }),
                )
              ],
            ),
          )
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



Widget textSection = Container(
  padding: const EdgeInsets.all(66),
  child: Text(
    'Welcome To HOMEX',
    softWrap: true,
    style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurpleAccent),
  ),
);
