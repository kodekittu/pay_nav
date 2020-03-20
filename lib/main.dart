import 'package:flutter/material.dart';
import 'package:paynav/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayNav',
      theme: ThemeData(
        //  brightness: Brightness.dark,
        primaryColor: Colors.purple,
        primarySwatch: Colors.blue,
        accentColor: Colors.purpleAccent,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
  }
}
