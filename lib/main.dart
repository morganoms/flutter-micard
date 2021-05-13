import 'package:flutter/material.dart';
import 'package:micard_app/components/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginComponent(),
    );
  }
}
