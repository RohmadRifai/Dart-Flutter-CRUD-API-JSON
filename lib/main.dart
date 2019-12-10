import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'form_add_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.orangeAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          title: Text(
            "Flutter CRUD API",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  _scaffoldState.currentContext,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return FormAddScreen();
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
