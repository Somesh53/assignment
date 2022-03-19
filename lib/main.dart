// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:assignment/pages/home.dart';
import 'package:assignment/pages/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/': (context) => homePage(),
        '/profile': (context) => ProfilePage(),
      },
    ));
