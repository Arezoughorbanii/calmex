import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_finalcalmexpert/ui/firstpage.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(title: 'Flutter Demo Home Page'),
    );
  }
}
