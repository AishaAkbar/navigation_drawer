import 'package:flutter/material.dart';
import 'package:navigation_drawer/home_screen.dart';
import 'package:navigation_drawer/second_screen.dart';
import 'package:navigation_drawer/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Navigator',
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: home_screen.id,
      routes: {
        home_screen.id: (context) => home_screen(),
        Second_screen.id: (context) => Second_screen(),
        Third_screen.id: (context) => Third_screen(),
      },
    );
  }
}
