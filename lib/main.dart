import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screen/screen1.dart';
import 'package:flutter_application_3/views/screen/screen2.dart';
import 'package:flutter_application_3/views/screen/screen3.dart';

import 'views/dashboard/DashboardTabs.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login(),
    );
  }
}
 