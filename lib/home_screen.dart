import 'package:flutter/material.dart';
import 'package:navigation_drawer/main.dart';
import 'package:navigation_drawer/second_screen.dart';
import 'package:navigation_drawer/third_screen.dart';

class home_screen extends StatefulWidget {
  static const String id = 'home_screen';
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              DrawerHeader(
                child: Text('I am Drawer'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  accountName: Text('Meraj Akbar'),
                  accountEmail: Text('johnhill@gmail.com')),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Meraj'),
                subtitle: Text('Hy Flutter world'),
                onTap: () {
                  Navigator.pushNamed(context, Second_screen.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Arham'),
                subtitle: Text('Flutter Developer'),
                onTap: () {
                  Navigator.pushNamed(context, Third_screen.id);
                },
              )
            ],
          )),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Second_screen.id);
                    },
                    child: Text('I am 1st')),
              )
            ],
          ),
        ));
  }
}
