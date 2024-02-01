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

        body: Center(
          child: Container(
            color: colormeet,
            height:600,
            width: 600,
            alignment: Alignment.center,
            child: Container(
              height: 350,
              alignment: Alignment.center,
              width: 350,
              decoration: BoxDecoration(
                color: colormeet,
              ),
              child: Container(
                height: 300,
                alignment: Alignment.center,
                width: 300,
                decoration:BoxDecoration(
                  color: colormeet,
                ) ,
                child: Container(
                  height: 300,
                  width: 300,
                  child:Center(
                    child: Image.asset('assest/Rapido-logo.png'),
                  )

                ),
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}