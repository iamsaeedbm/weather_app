import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screens/app_bar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('second screen'),
      body: SafeArea(child: Column()),
    );
  }
}
