import 'package:flutter/material.dart';

class MyBottomNaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox.fromSize(
      size: Size(40, 50),
      //child: ClipOval(
      child: Material(
        color: Colors.green,
        child: InkWell(
          splashColor: Colors.green,
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              // const Icon(
              // Icons.business_center,
              // color: Colors.green,
              //size: 20,
              // ), // <-- Icon
              const Text(
                "About Equb",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ), // <-- Text
            ],
          ),
        ),
      ),
    ));
  }
}
