import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:repido_meet_app/viewscreen/main1.dart';
import 'package:repido_meet_app/viewscreen/main2.dart';
import 'package:repido_meet_app/viewscreen/main3.dart';
import 'package:repido_meet_app/viewscreen/main4.dart';
//main class
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF9775FA),
  ));//to fix stutes bar color;
  runApp(const MyApp());// yto run app write hera class name;
}
//this class is our apps class this statelesswidget
class MyApp extends StatelessWidget {  //we use stateless for less momorey lode
  const MyApp({Key? key});
  //key is used to state mangemnt and profmunec optimzien for it key idntify all widgets;

  @override
  Widget build(BuildContext context) {//build is our maker of app that we make apps ui and logic in build ;
    return MaterialApp(
      title: "LAZA",//that fix app name;
      debugShowCheckedModeBanner: false,//debug leble;
      initialRoute: '/',//this is our initialroutes
      // Flutter specifies which route the app should display first when it starts.
      // Essentially, it determines the entry point of your application. When you launch a Flutter app,

      // and this our routess;
      routes: {
        '/': (context) => const Slashscrren(),//scrrn 1;
        '/home': (context) => const Productscreen(),//screen 2;
        '/view': (context) => const Productview(index: 0,),//screen 3
        '/addcart':(context) => const CartScreen(),//screen 4
      },

    );
  }
}
