import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:web_app/firebase/flutterfire.dart';
import 'package:web_app/firebase/user_data.dart';
import 'package:web_app/screens/constants.dart';
import 'package:web_app/screens/welcome/welcome.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final auth = FirebaseAuth.instance;
  late Future<Userdata> data;

  @override
  void initState() {
    super.initState();
    data = getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "HOMEX",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: mainColor,
            elevation: 22,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.person),
                  )),
            ]),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello '),
                ElevatedButton(
                  onPressed: () async {
                    await auth.signOut();
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: Text('logout'),
                )
              ],
            ),
          ),
        ),
        drawer: Drawer(
            child: FutureBuilder<Userdata>(
                future: data,
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.active) {
                    return Container(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                            child: DrawerHeader(
                              decoration: BoxDecoration(
                                color: mainColor,
                              ),
                              child: Text(
                                '${snapshot.data!.email}',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text('Items'),
                            onTap: () {},
                          ),
                          const Divider(
                            height: 20,
                            thickness: 1,
                          ),
                          ListTile(
                            title: Text('BarChart'),
                            onTap: () {},
                          ),
                          const Divider(
                            height: 20,
                            thickness: 1,
                          ),
                          ListTile(
                            title: Text('Suggestion'),
                            onTap: () {},
                          ),
                          const Divider(
                            height: 20,
                            thickness: 1,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                })));
  }
}
