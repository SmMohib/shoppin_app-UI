import 'package:flutter/material.dart';
import 'package:flutterwidget/HomePage.dart';
import 'package:flutterwidget/Widget/GridViewdemo.dart';
import 'package:flutterwidget/Widget/ListViewDemo.dart';
import 'package:flutterwidget/Widget/TabBarDemo.dart';
import 'package:flutterwidget/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
