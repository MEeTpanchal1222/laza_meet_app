import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/colors.dart';
import 'package:repido_meet_app/uitels/list.dart';
import 'main2.dart';

class Productview extends StatelessWidget {
  final int index;

  const Productview({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        title: Text('Product View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              listmeet1[index]['image'],
              height: 300,
              width: 500,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(  margin: EdgeInsets.fromLTRB(20, 20, 0, 10),
                    child: Text(listmeet1[index]['name'],style: TextStyle(color: Colors.indigo[900],fontSize: 27),)),
            ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(  margin: EdgeInsets.fromLTRB(20, 0, 0, 50),
                      child: Text(listmeet1[index]['waretype'],style: TextStyle(color: Colors.black87,fontSize: 35,),)),
                  Container(  margin: EdgeInsets.fromLTRB(50, 0, 0, 50),
                      child: Text("\$${listmeet1[index]["price"]}",style: TextStyle(color: colormeet,fontSize: 35,),)),
                ]
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 355,
              child: Image.asset('assest/page3/size.png'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 355,
              child: Image.asset('assest/page3/descrption.png'),
            ),
            Text('Reviews',style: TextStyle(fontSize: 30,color: colormeet),),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 355,
              child: Image.asset('assest/page3/review.png'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 355,
              child: Image.asset('assest/page3/review1.png'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 355,
              child: Image.asset('assest/page3/review2.png'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 355,
              child: Image.asset('assest/page3/review3.png'),
            ),
          ],
        ),
      ),
    );
  }
}


