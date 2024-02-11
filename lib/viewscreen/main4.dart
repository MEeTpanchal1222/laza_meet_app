import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/colors.dart';
import 'package:repido_meet_app/viewscreen/main2.dart';
import '../uitels/list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Productscreen()));
                },
                  child: Icon(Icons.backup_table_outlined)), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),

            ],
          ),
          appBar: AppBar(
            title: Text(
              'Cart',
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Color(0xffFAFAFA),
          body: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  listmeetcart.length,
                      (index) => Container(
                    margin: EdgeInsets.all(10),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25,),
                        SizedBox( width: 100,height:130,
                            child: Image.asset(listmeetcart[index]['image'],fit: BoxFit.fitWidth,)),
                        SizedBox(width: 65,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              listmeetcart[index]['name'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Text(
                              listmeetcart[index]['waretype'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Text(
                              '\$ ${listmeetcart[index]['price']*listmeetcart[index]['qu']}/-',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: colormeet,
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            listmeetcart[index]['qu']--;
                                          });
                                        },
                                        child: Text(
                                          '<',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 30,),
                                        ),
                                      ),
                                      Text(
                                        '${listmeetcart[index]['qu']}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              listmeetcart[index]['qu']++;
                                            });
                                          },
                                          child: Text(
                                            '>',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 30),
                                          )),

                                    ],
                                  ),
                                 ),
                                SizedBox(width: 20),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        listmeetcart.removeAt(index);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: Colors.grey,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          )),
    );
  }
}

