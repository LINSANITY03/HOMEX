import 'package:flutter/material.dart';
import 'package:web_app/screens/dashboard/home_page.dart';
import 'package:web_app/screens/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
User firebaseUser = FirebaseAuth.instance.currentUser;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget firstWidget;
    if (firebaseUser != null) {
      firstWidget = MyHomePage();
    } else {
      firstWidget = Home_page();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOMEX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: firstWidget,
    );
  }
}
