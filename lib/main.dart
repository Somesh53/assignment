// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: homePage(),
    ));

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children;
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
          title: const Text(
            'Hi Username',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
              fontFamily: 'Roboto',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_box_rounded),
              onPressed: () {},
              iconSize: 37.5,
            ),
          ]),
      body: Column(
        children: <Widget>[
          SizedBox(height: 18.0),
          Center(
            child: Container(
              width: 324.0,
              height: 337.0,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: children = <Widget>[
                  SizedBox(height: 60.0),
                  Text(
                    '00.00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[850],
                      fontFamily: 'Oswald',
                      fontSize: 100.0,
                    ),
                  ),
                  SizedBox(height: 34.0),
                  Center(
                    child: FlatButton(
                      onPressed: () {},
                      child: Container(
                        width: 263.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            'Update Your Balance',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontFamily: 'Roboto',
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
