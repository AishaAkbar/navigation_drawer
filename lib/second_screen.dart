import 'package:flutter/material.dart';
import 'package:navigation_drawer/home_screen.dart';

class Second_screen extends StatefulWidget {
  static const String id = 'second_screen';
  const Second_screen({super.key});

  @override
  State<Second_screen> createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second_screen'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, home_screen.id);
                  },
                  child: Text('I am Second')),
            )
          ],
        ),
      ),
    );
  }
}
