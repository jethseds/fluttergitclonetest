import 'dart:convert';
import 'package:orderingapp/firebase_options.dart';

import 'login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

// ignore: use_key_in_widget_constructors, must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: _MyApp());
  }
}

class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);
  @override
  __MyApp createState() => __MyApp();
}

class __MyApp extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double logoWidth = deviceWidth / 5; // Adjust the percentage as needed
    double titlesize = deviceWidth / 15; // Adjust the percentage as needed
    double textsmall = deviceWidth / 25; // Adjust the percentage as needed
    double paddingContainer =
        deviceWidth / 12; // Adjust the percentage as needed
    double inputWidth = deviceWidth * 0.8;
    double height = 0;
    double spacing = 0;
    double spacingTop = 50;
    if (deviceWidth <= 390) {
      logoWidth = deviceWidth / 2.5;
      height = 45;
      spacing = 10;
      paddingContainer = deviceWidth / 12;
    } else if (deviceWidth <= 480) {
      logoWidth = deviceWidth / 3;
      height = 55;
      spacing = 20;
      spacingTop = 50;
    }
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: paddingContainer, vertical: paddingContainer),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: spacingTop),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,
                  child: SizedBox(
                    child: Image(
                      width: 200,
                      image: AssetImage('asset/logo.png'),
                    ),
                  )),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'PHARMACY',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'APPLICATION',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Predecting Gcash Mode',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Payment Preference using',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Android Phone',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          color: Colors.blue,
                          width: inputWidth,
                          height: height,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => loginPage())));
                              },
                              child: Text(
                                'GET STARTED',
                                style: TextStyle(
                                    fontSize: textsmall, color: Colors.white),
                              ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
