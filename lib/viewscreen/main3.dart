import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/list2.dart';

import 'main2.dart';

class Productview extends StatefulWidget {
  const Productview({super.key});


  @override
  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: 'Add to cart',),
            BottomNavigationBarItem(icon:
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Productscreen()),
                );
              },child: Icon(Icons.backup_table_outlined)),label: 'back')
          ]),
          body: Column(

          ),
          ),
        ),
      );
  }
}
