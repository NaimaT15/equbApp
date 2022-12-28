import 'package:flutter/material.dart';

import 'popularEqub.dart';

class newcard extends StatelessWidget {
  final data datas;
  const newcard({Key? key, required this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 300.00,
      height: 100.00,
      child: Card(
          elevation: 2.0,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Icon(
                      datas.icon,
                      color: Colors.green,
                    ),
                  ),
                  // ignore: prefer_const_constructor
                  Text(
                    datas.title,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ]),
          )),
    );
  }
}
