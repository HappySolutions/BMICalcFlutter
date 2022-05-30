import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmireuslt-screen.dart';
import 'package:flutter_application_1/counter-screen.dart';
import 'package:flutter_application_1/home-screen.dart';
import 'package:flutter_application_1/login-screen.dart';
import 'package:flutter_application_1/messenger-screen.dart';
import 'package:flutter_application_1/users-screen.dart';

import 'bmi-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
