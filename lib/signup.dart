import 'package:ekubapp/signup.dart';
import 'package:ekubapp/them.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homepage.dart';
import 'main.dart';
import 'signup.dart';

//Widget for input

class SignUpWidget extends StatefulWidget {
  @override
  SignUpState createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUpWidget> {
  final FocusNode focusPhone = FocusNode();
  final FocusNode focusPIN = FocusNode();
  final FocusNode focusName = FocusNode();
  final FocusNode focusConfirmphoneN = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  final TextEditingController confirmphonenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            //overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Container(
                  width: 360.00,
                  height: 480.00,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusName,
                          controller: nameController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              fontFamily: "SignikaSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.black,
                                size: 22.0,
                              ),
                              hintText: "Enter name",
                              hintStyle: TextStyle(
                                  fontFamily: "SignikaSemiBold",
                                  fontSize: 18.0)),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: focusPhone,
                          controller: phoneController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              fontFamily: "SignikaSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.black,
                                size: 22.0,
                              ),
                              hintText: "Enter phone",
                              hintStyle: TextStyle(
                                  fontFamily: "SignikaSemiBold",
                                  fontSize: 18.0)),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      // Padding(
                      //  padding: const EdgeInsets.only(
                      //      top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      //   child: TextField(
                      //     focusNode: focusPIN,
                      //     controller: pinController,
                      //     style: const TextStyle(
                      //         fontFamily: "SignikaSemiBold",
                      //         fontSize: 16.0,
                      //         color: Colors.black),
                      //     decoration: const InputDecoration(
                      //         border: InputBorder.none,
                      //         icon: Icon(
                      //           FontAwesomeIcons.lock,
                      //           color: Colors.black,
                      //           size: 22.0,
                      //         ),
                      //         hintText: "Enter password",
                      //         hintStyle: TextStyle(
                      //             fontFamily: "SignikaSemiBold",
                      //             fontSize: 18.0)),
                      //   ),
                      // ),
                      // Container(
                      //   width: 250.0,
                      //   height: 1.0,
                      //   color: Colors.grey,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(
                      //       top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      //   child: TextField(
                      //     focusNode: focusPhone,
                      //     controller: PINController,
                      //     style: const TextStyle(
                      //         fontFamily: "SignikaSemiBold",
                      //         fontSize: 16.0,
                      //         color: Colors.black),
                      //     decoration: const InputDecoration(
                      //         border: InputBorder.none,
                      //         icon: Icon(
                      //           FontAwesomeIcons.lock,
                      //           color: Colors.black,
                      //           size: 22.0,
                      //         ),
                      //         hintText: "Confirm password",
                      //         hintStyle: TextStyle(
                      //             fontFamily: "SignikaSemiBold",
                      //             fontSize: 18.0)),
                      //   ),
                      // ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40.0),
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromARGB(255, 51, 138, 70),
                                  offset: Offset(1.0, 6.0),
                                  blurRadius: 20.0),
                              BoxShadow(
                                  color: Color.fromARGB(255, 32, 136, 79),
                                  offset: Offset(1.0, 6.0),
                                  blurRadius: 20.0),
                            ],
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 28, 137, 66),
                                  Color.fromARGB(255, 41, 136, 62)
                                ],
                                begin: FractionalOffset(0.2, 0.2),
                                end: FractionalOffset(1.0, 1.0),
                                stops: [0.1, 1.0],
                                tileMode: TileMode.clamp)),
                        child: MaterialButton(
                          highlightColor: Colors.transparent,
                          splashColor: AppColours.colorEnd,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 42.0),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontFamily: "SignikaSemiBold",
                                  color: Colors.white,
                                  fontSize: 22.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Already Registerd?',
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                            TextButton(
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()));
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white10,
                          Colors.white,
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 16.0,
                        fontFamily: "WorkSansMedium"),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white10,
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class PINController {}

class PhoneNumber {}
