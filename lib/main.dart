import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screens/home_screen.dart';
import 'package:weather_app/presentation/screens/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
