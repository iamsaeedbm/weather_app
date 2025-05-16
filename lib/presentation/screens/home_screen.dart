import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/presentation/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var test;
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Text(''),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  getData();
                  cityName = test;
                });
              },
              child: Text('get data'),
            ),
            SizedBox(height: 50),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('second page'),
            ),
          ],
        ),
      ),
    );
  }

  getData() async {
    var response = await Dio().get(
      'http://api.weatherapi.com/v1/current.json?key=6877e03858b14079ba5132545253004&q=Tehran&aqi=no',
    );
    test = response.data['location']['name'];
  }
}
