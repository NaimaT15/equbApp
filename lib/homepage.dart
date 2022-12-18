// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'newcard.dart';

// const MyApp({super.key});
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  // @override
  // Widget build(BuildContext context) {
  //  return MaterialApp(
  //   title: 'Equb App',
  //  theme: ThemeData(
  //    primarySwatch: Colors.green,
  // ),
  // home: const MyHomePage(),

//class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key});

  // @override
  // ignore: library_private_types_in_public_api
  // _MyHomePageState createState() {
  //   return _MyHomePageState();
  // }
//}

//class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Digital Equb"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          backgroundColor: Colors.green,
          actions: [
            Center(child: Text("Language")),
            IconButton(
              icon: const Icon(
                Icons.arrow_drop_down,
              ),
              onPressed: () {},
            )
          ],
          actionsIconTheme: const IconThemeData(
              //  size: 32,
              //),
              // ),
              // ignore: unnecessary_const
              //drawer: const Drawer(),
              ),
        ),
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
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text("Equb History"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("Payment History"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Invite friends"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text("Contacts"),
                onTap: () {},
              )
            ],
          ),
        ),
        // }
//}
        //body: Center(
        //child: Container(
        // child: ListView(children: <Widget>[
        // Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //children: [
        //  Padding(
        //  padding: const EdgeInsets.all(10.0),
        //child: Center(
        //  child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //  children: [
        // Center(
        // child: Padding(
        // padding: const EdgeInsets.only(left: 50.0),
        //child: Image.asset(
        // "assets/photo_large.jpg",
        //width: 70,
        //),
        //),
        //),
        //const Text('Digital Equb',
        //  style: TextStyle(
        //        fontSize: 25.0,
        //          color: Color.fromARGB(255, 19, 112, 43))),
        //    ],
        //),
        //  ),
        //  ),
        //  ],
        //  ),
        // Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        // children: const [
        // Text(
        //     'Digital Equb that give to the customer simplcty\nand also save wasteg of time.',
        //    style: TextStyle(color: Color.fromARGB(255, 72, 75, 75))),
        // ],
        // ),
        // Padding(
        // padding: const EdgeInsets.only(top: 28.0),
        //child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        // children: const [
        //   Text('Digital Equb that give to the customer',
        //    style: TextStyle(
        //     fontSize: 18,
        //    fontWeight: FontWeight.bold,
        //color: Color.fromARGB(255, 8, 11, 11))),
        //  ],

        //  ),
        //),

        // );

        body: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
          children: List.generate(datas.length, (index) {
            return Center(
              child: newcard(
                datas: datas[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class data {
  const data({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<data> datas = const <data>[
  const data(title: 'Driver', icon: Icons.home),
  const data(title: 'Employee', icon: Icons.person),
  const data(title: 'Business', icon: Icons.home),
  //const data(title: 'Home', icon: Icons.home),
];
