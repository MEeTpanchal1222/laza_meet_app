import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/list.dart';
import 'main2.dart';

class Productview extends StatelessWidget {
  final int index;

  const Productview({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: GestureDetector(
          onTap: () {
            listmeetcart.add(listmeet1[index]);
          },
            child: Icon(Icons.add_box_rounded)),label: 'Add to cart',),
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
              height: 450,
              width: 450,
              fit: BoxFit.fitWidth,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(  margin: EdgeInsets.fromLTRB(20, 20, 0,4),
                    child: Text(listmeet1[index]['name'],style: TextStyle(color: Colors.indigo[900],fontSize: 30),)),
            ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(  margin: EdgeInsets.fromLTRB(20, 0, 0, 30),
                      child: Text(listmeet1[index]['waretype'],style: TextStyle(color: Colors.black87,fontSize: 35,),)),
                  Container(  margin: EdgeInsets.fromLTRB(90, 0, 0, 30),
                      child: Text("\$${listmeet1[index]["price"]}",style: TextStyle(color: Colors.black87,fontSize: 35,),)),
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
            Text('Reviews',style: TextStyle(fontSize: 30,color: Colors.indigo),),
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


