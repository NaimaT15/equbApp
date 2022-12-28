// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:ekubapp/homepage.dart';
import 'package:flutter/material.dart';

import 'PackagePage.dart';
import 'newcard.dart';

// const MyApp({super.key});
class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Digital Equb"),
          leading: Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
          backgroundColor: Colors.green,
          actionsIconTheme: const IconThemeData(
            size: 32,
            //),
            // ),
            // ignore: unnecessary_const
            //
          ),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Center(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  //child: Image.asset(
                  //  "assets/photo_large.jpg",
                  // width: 70,
                  //),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Flutter McFlutter',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const Text('Experienced App Developer'),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 100,
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    children: List.generate(datas.length, (index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyContainerWidget()));
                        },
                        child: Center(
                          child: newcard(
                            datas: datas[index],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          // ignore: dead_code
        ]),
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
