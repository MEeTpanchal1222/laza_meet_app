import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        useMaterial3: true,
      ),
      home: SafeArea(child:
      Scaffold(
        backgroundColor:colormeet,

        body: Center(
          child: Container(
            color: colormeet,
            alignment: Alignment.center,

            child: Container(
                height: 300,
                width: 300,
                child:Center(
                  child: Image.asset('assest/mic.png'),
                )

            ),
          ),
        ),
      ),
      ),
    );
  }
}