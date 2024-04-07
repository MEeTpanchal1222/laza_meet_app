import 'dart:async';

import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/colors.dart';

import 'main2.dart';


//class of slashscreen that is ststefull that have changing state on user interactions
 class Slashscrren extends StatefulWidget {
  const Slashscrren({super.key});

  @override
  State<Slashscrren> createState() => _SlashscrrenState();// now this class is private;

}
 class _SlashscrrenState extends State<Slashscrren> {//this class extend with slashscreen
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        useMaterial3: true,//for use only matrial3
      ),
      home: SafeArea(child://safearea that save our app form phone nothes cutting app page
      Scaffold(// scaffold is base of  all widget and app;
        //that proprtei is appbar and body;
        backgroundColor:colormeet,

        body: InkWell(  //inkwell
    onTap: () {
      Timer(
          Duration(seconds: 1),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const Productscreen(),)));
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