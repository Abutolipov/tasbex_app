import 'package:flutter/material.dart';
import 'models/base.dart';
import 'models/kirish.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Kirish(),
      routes: {
        Kirish.id:(context)=>Kirish(),
        DeterminatePage.id:(context)=>DeterminatePage(),
      },
    );
  }
}

