import 'package:assignment/Models/widgets.dart';
import 'package:assignment/sources/tasks.dart';
import 'package:flutter/material.dart';
import 'package:assignment/pages/home.dart';
import 'package:assignment/pages/profile.dart';
import 'package:assignment/databaseHelper.dart';
import '../balance.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  DatabaseHelper _dbHelper = DatabaseHelper();

  // Widget taskTemplate(Task) {
  //   return Card(
  //       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
  //       child: Column(
  //         children: <Widget>[
  //           Text(
  //             Task.work,
  //             textAlign: TextAlign.left,
  //             style: TextStyle(
  //               fontFamily: 'Roboto',
  //               fontSize: 16,
  //             ),
  //           ),
  //           Text(
  //             '${Task.coins}',
  //             textAlign: TextAlign.left,
  //             style: TextStyle(
  //               fontFamily: 'Oswald',
  //             ),
  //           ),
  //           // ignore: deprecated_member_use
  //           FlatButton.icon(
  //             onPressed: () {
  //               setState(() {
  //                 balance += Task.coins;
  //               });
  //             },
  //             icon: Icon(Icons.update),
  //             label: Text('Update your balance'),
  //           ),
  //         ],
  //       ));
  // }

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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ProfilePage(currentBalance: balance)));
                // Navigator.pushNamed(context, '/profile');
              },
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
                      '$balance',
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
                        onPressed: () {
                          Navigator.pushNamed(context, '/makeEntry');
                        },
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
            Expanded(
              child: FutureBuilder(
                initialData: [],
                future: _dbHelper.getTasks(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return TaskCardWidget(
                        title: snapshot.data[index]?.title, coins: coins);        
                      )
                    },
                  );
                },
              ),
            ),
              
            

            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: Tasks.map((Task) => taskTemplate(Task)).toList(),
            //   ),
            // ),
          ],
        ),
    );
  }
}
