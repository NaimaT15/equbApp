// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'MyBottomNavBar.dart';
import 'popularEqub.dart';
import 'signup.dart';
import 'Registr/login.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // String? user_id;
  // HomePage({this.user_id});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EqubApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? uid;
  getEkubetegnID() {
    final userCollection = FirebaseFirestore.instance.collection("users");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital Equb"),
        actions: [
          Center(child: Text("Language")),
          IconButton(
            icon: const Icon(
              Icons.arrow_drop_down,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirebaseAuthDemo()));
            },
          )
        ],
      ),
      bottomNavigationBar: MyBottomNaBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Naima Tilahu"),
              accountEmail: Text("naim@t"),
              currentAccountPicture: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage("assets/photo_large.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("Equb History"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payment History"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Invite friends"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("Contacts"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/photo_large.jpg",
                    width: 70,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Digital Equb',
                      style: TextStyle(color: Colors.green, fontSize: 30),
                    ),
                    const Text(
                      'Experienced App Developer',
                      style: TextStyle(
                          color: Color.fromARGB(255, 73, 65, 65), fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.black38,
              height: 15,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'NAIMA TILAHUN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    // Theme.of(context).textTheme.headline5,),
                  ),
                  const Text(
                    'Saved Money',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  const Text(
                    '0Birr',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    (uid!),
                    style: TextStyle(
                        color: Color.fromARGB(255, 180, 160, 160),
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black38,
              height: 15,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: MediaQuery.of(context).size.height - 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.1,
                              mainAxisSpacing: 8.0,
                              crossAxisSpacing: 8.0),
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PopularPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Card(
                              elevation: 5,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              margin: EdgeInsets.fromLTRB(5, 90, 5, 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.business_outlined,
                                    size: 30,
                                    color: Colors.green,
                                  ),
                                  const Text(
                                    "Equb",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PopularPage()));
                          },
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            margin: EdgeInsets.fromLTRB(5, 90, 5, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.money,
                                  size: 30,
                                  color: Colors.green,
                                ),
                                const Text(
                                  "Payment",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.people,
                                  size: 30,
                                  color: Colors.green,
                                ),
                                const Text(
                                  "Equbtegna",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PopularPage()));
                          },
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            margin: EdgeInsets.fromLTRB(5, 0, 5, 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.wheelchair_pickup,
                                  size: 30,
                                  color: Colors.green,
                                ),
                                const Text(
                                  "Lottery",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uid = FirebaseAuth.instance.currentUser!.uid;
  }
}
