import 'package:flutter/material.dart';

class Third_screen extends StatefulWidget {
  static const String id = 'Third_screen';
  const Third_screen({super.key});

  @override
  State<Third_screen> createState() => _Third_screenState();
}

class _Third_screenState extends State<Third_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('I am Third'),
          ),
          body: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Flutter'),
                          subtitle: Text('Developer'),
                        );
                      }))
            ],
          )),
    );
  }
}
