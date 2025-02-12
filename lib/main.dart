import 'package:flutter/material.dart';
import 'package:my_cv_app/constants.dart';

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
              SizedBox(height: 30),
              CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage('assets/1.jpg'),
              ),
              Text('D1ma H',
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold)),
              Text('Flutter Developer'),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.call),
                    title: Text('+79187777777', style: smallTextStyle),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('email.gmail.com', style: smallTextStyle),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Education',
                            textAlign: TextAlign.center,
                            style: regularBoltTextStyle,
                          ),
                          Text('NPI, Novocherkassk',
                              textAlign: TextAlign.center,
                              style: regularTextStyle),
                          Text('University',
                              textAlign: TextAlign.center,
                              style: regularTextStyle),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text('Work experience',
                              textAlign: TextAlign.center,
                              style: regularBoltTextStyle),
                          Text('English',
                              textAlign: TextAlign.center,
                              style: regularTextStyle),
                          Text('Flutter developer',
                              textAlign: TextAlign.center,
                              style: regularTextStyle),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
