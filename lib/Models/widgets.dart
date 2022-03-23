import 'package:assignment/Models/balance.dart';
import 'package:assignment/Models/task.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatefulWidget {
  final String title;
  final double coins;

  TaskCardWidget({required this.title, required this.coins});

  @override
  State<TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          children: <Widget>[
            Text(
              widget.title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
              ),
            ),
            Text(
              '${widget.coins}',
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: 'Oswald',
              ),
            ),
            // ignore: deprecated_member_use
            FlatButton.icon(
              onPressed: () {
                setState(() {
                  balance += widget.coins;
                });
              },
              icon: const Icon(Icons.update),
              label: const Text('Update your balance'),
            ),
          ],
        ));
  }
}
