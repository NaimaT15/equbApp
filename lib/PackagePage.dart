import 'package:flutter/material.dart';
import 'popularEqub.dart';

class MyContainerWidget extends StatelessWidget {
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
                      MaterialPageRoute(builder: (context) => PopularPage()));
                },
              ),
            ),
            backgroundColor: Colors.green,
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 110.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black38,
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text("Packages", style: TextStyle(fontSize: 15)),
                    const Text("Round 3", style: TextStyle(fontSize: 15)),
                    const Text("15000", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 110.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black38,
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text("Packages", style: TextStyle(fontSize: 15)),
                    const Text("Round 3", style: TextStyle(fontSize: 15)),
                    const Text("15000", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 110.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black38,
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text("Packages", style: TextStyle(fontSize: 15)),
                    const Text("Round 3", style: TextStyle(fontSize: 15)),
                    const Text("15000", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
