import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repido_meet_app/viewscreen/main1.dart';
import 'package:repido_meet_app/viewscreen/main2.dart';
import 'package:repido_meet_app/viewscreen/main3.dart';
import 'package:repido_meet_app/viewscreen/main4.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF181A20),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LAZA",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Slashscrren(),
        '/home': (context) => const Productscreen(),
        '/view': (context) => const Productview(index: 0,),
        '/addcart':(context) => const CartScreen(),
      },

    );
  }
}
