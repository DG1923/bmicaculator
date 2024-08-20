import 'package:flutter/material.dart';
import 'input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0029),
        textTheme: TextTheme(
            bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 40,
        )),
        appBarTheme: AppBarTheme(
            color: Color(0xFF0A0D22),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
      ),
      home: InputRange(),
    );
  }
}
