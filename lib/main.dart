import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listdialogs/screens/mainscreen.dart';
import 'package:listdialogs/screens/secondscreen.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      initialRoute: '/mainscreen',
      routes: {
        '/mainscreen': (context) => MainScreen(),
        '/secondscreen': (context) => SecondScreen(),

      },
      title: 'Flutter best frame',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}

