import 'package:flutter/material.dart';
import 'views/scores/scores.view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Score App',
      theme: ThemeData.dark(),
      home: ScoreScreen(),
    );
  }
}
