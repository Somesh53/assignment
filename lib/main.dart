// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(const MaterialApp(
      home: homePage(),
    ));

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

double Balance = 00.00;

class Task {
  String work;
  int coins;

  Task({required this.work, required this.coins});
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  List<Task> Tasks = [
    Task(work: 'Playing 1 round of valorant', coins: -200),
    Task(work: 'Coding for one hour', coins: 100),
    Task(work: 'Wake Up Before 5:00', coins: 120),
    Task(work: 'Listening Songs for 15 min', coins: -50),
    Task(work: 'Going on a walk', coins: 80),
    Task(work: 'Eating junk food', coins: -150),
  ];

  Widget taskTemplate(Task) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          children: <Widget>[
            Text(
              Task.work,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
              ),
            ),
            Text(
              '${Task.coins}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Oswald',
              ),
            ),
            FlatButton.icon(
              onPressed: () {
                setState(() {
                  Balance += Task.coins;
                });
              },
              icon: Icon(Icons.update),
              label: Text('Update your balance'),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
      body: SingleChildScrollView(
        child: Column(
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
                      '$Balance',
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
            SizedBox(height: 5),
            Text(
              'Your Tasks',
              style: TextStyle(
                color: Colors.grey[300],
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: Tasks.map((Task) => taskTemplate(Task)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
