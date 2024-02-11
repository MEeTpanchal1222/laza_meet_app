import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/colors.dart';
import 'package:repido_meet_app/uitels/list.dart';

import 'main3.dart';
import 'main4.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Image.asset('assest/logo/menu.png'),
                    ),
                    Spacer(),
                    Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartScreen(),
                              ),
                            );
                          },
                          child: Image.asset('assest/logo/add.png')),
                    ),
                  ],
                ), //top logo butomn

                Container(
                    width: 500,
                    height: 65,
                    margin: EdgeInsets.fromLTRB(30, 20, 20, 0),
                    child: Text.rich(
                      TextSpan(
                          text: 'Hello\n',
                          style: TextStyle(
                            fontSize: 28,
                            decorationColor: Colors.black87,
                          ),
                          children: [
                            TextSpan(
                              text: 'wellcome to laza',
                              style: TextStyle(
                                fontSize: 18,
                                decorationColor: Colors.black87,
                              ),
                            )
                          ]),
                    )), //wellcome to laza
                Row(children: [
                  Container(
                    height: 50,
                    width: 250,
                    margin: EdgeInsets.fromLTRB(30, 30, 40, 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6FA),
                        borderRadius: BorderRadius.circular(13)),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '  Search...',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.5),
                      color: Color(0xFF9775FA),
                    ),
                    child: Image(
                      image: AssetImage('assest/logo/mic.png'),
                    ),
                  )
                ]), //mic logo and sercha
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 230,
                      margin: EdgeInsets.fromLTRB(20, 0, 50, 15),
                      child: Text(
                        '  Choose Brand',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 100,
                      child: Center(
                          child: Text(
                        'Viewall',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey),
                      )),
                    ),
                  ], //chosse brand bar
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.white),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/addi.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text(' addidas')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.black87),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/puma.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text('  Puma')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.white),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/fila.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text('   Fila')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.white),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/nike.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text(' Nike')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.black87),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/puma.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text('  Puma')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.white),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/addi.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text(' addidas')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.white),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/nike.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text(' Nike')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.5),
                        height: 50,
                        width: 115,
                        child: Row(
                          children: [
                            Container(
                                height: 30,
                                width: 45,
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.5),
                                    color: Colors.black87),
                                child: Image.asset(
                                  'assest/rowscrowall_logo/puma.png',
                                  height: 30,
                                  width: 20,
                                  alignment: Alignment.center,
                                )),
                            Text('  Puma')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.3),
                            color: Color(0xFFF5F6FA)),
                      )
                    ], //row of brand
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 230,
                      margin: EdgeInsets.fromLTRB(20, 20, 50, 15),
                      child: Text(
                        '  NEW Arraival',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 100,
                      child: Center(
                          child: Text(
                        'Viewall',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey),
                      )),
                    ),
                  ],
                ), // bar of new
                GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: listmeet1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (100 / 140),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      child: Container(
                        height: 257,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.5))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 20,
                                width: 300,
                                margin: EdgeInsets.fromLTRB(165, 0, 0, 0),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 28,
                                  color: colormeet,
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Productview(index: index)),
                                );
                              },
                              child: Image.asset(
                                listmeet1[index]["image"],
                                height: 190,
                                width: 190,
                              ),
                            ),
                            Text(listmeet1[index]["name"]),
                            Text(listmeet1[index]["waretype"]),
                            Text(
                              "\$${listmeet1[index]["price"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  height: 15,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: listmeet1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (100 / 140),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      child: Container(
                        height: 257,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.5))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 20,
                                width: 300,
                                margin: EdgeInsets.fromLTRB(165, 0, 0, 0),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 28,
                                  color: colormeet,
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Productview(index: index)),
                                );
                              },
                              child: Image.asset(
                                listmeet1[index]["image"],
                                height: 190,
                                width: 190,
                              ),
                            ),
                            Text(listmeet1[index]["name"]),
                            Text(listmeet1[index]["waretype"]),
                            Text(
                              "\$${listmeet1[index]["price"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
