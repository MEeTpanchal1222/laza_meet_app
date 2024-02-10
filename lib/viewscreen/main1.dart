import 'dart:async';

import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/colors.dart';

import 'main2.dart';



 class Slashscrren extends StatefulWidget {
  const Slashscrren({super.key});

  @override
  State<Slashscrren> createState() => _SlashscrrenState();

}
 class _SlashscrrenState extends State<Slashscrren> {
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

        body: InkWell(
    onTap: () {
      Timer(
          Duration(seconds: 3),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => Productscreen())));
    },
    child:Center(
          child: Container(
            color: colormeet,
            alignment: Alignment.center,

            child: Container(
                height: 300,
                width: 300,
                child:Center(
                  child: Image.asset('assest/img.png'),
                )

            ),
          ),
        ),
      ),
      )
    )
    );
  }
}