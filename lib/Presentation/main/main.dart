import 'package:flutter/material.dart';
import 'package:flutter_app1/Presentation/homepage/homepage.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return HomePage();
  }
}
