// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:assignment/pages/home.dart';
import 'package:assignment/pages/profile.dart';

import '../balance.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 00.00),
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/rdj.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Color.fromARGB(255, 212, 212, 212),
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Color.fromARGB(255, 158, 158, 158),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Robert Downey Jr.',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 40.00,
            ),
            Center(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    balance = 0;
                  });
                },
                child: Container(
                  width: 263.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 158, 158, 158),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      'Reset Your Balance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontFamily: 'Roboto',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
