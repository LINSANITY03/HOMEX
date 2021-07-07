import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:web_app/firebase/user_data.dart';



Future<bool> signIn(context, String email, String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e){
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.code)));
    return false;
  }
  catch (e) {
    print(e);
    return false;
  }
}

Future<bool> signup(context, String email, String password) async {
  try {
    UserCredential result = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('the password provided is too weak.');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('the password provided is too weak.')));
    } else if (e.code == 'email-already-in-use') {
      print('the account already exists for the email.');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('the account already exists for the email.')));
    }
    return false;
  } catch (e) {
    print(e.toString());
    return false;
  }
}

Future<Userdata> getdata() async {
  User user = await FirebaseAuth.instance.currentUser;
  final email = user.email;
  print(user);
  print(user.email);
  return Userdata(email: email);

}
