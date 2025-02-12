import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCVScreen(),
    );
  }
}

class MyCVScreen extends StatelessWidget {
  const MyCVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage('assets/1.jpg'),
              ),
              Text('D1ma H',
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold)),
              Text('Flutter Developer')
            ],
          ),
        ),
      ),
    );
  }
}
