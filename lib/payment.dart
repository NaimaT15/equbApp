import 'package:ekubapp/popularEqub.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage(List<data> datas);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Events Page"),
      ),
    );
  }
}
