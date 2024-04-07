import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repido_meet_app/uitels/colors.dart';
import 'package:repido_meet_app/viewscreen/main2.dart';
import '../uitels/list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}
double totalAmt = getTotal();
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
              children: [
                Column(
                  children: List.generate(//list.generate is we use for make widget by list data
                      listmeetcart.length,//list length
                          (index) => Container(
                        margin: EdgeInsets.all(10),
                        height: 150,

                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 25,),//sized box we use it for maxium for create space in ui
                            SizedBox( width: 100,height:130,
                                child: Image.asset(listmeetcart[index]['image'],fit: BoxFit.fill,)),
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
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                (listmeetcart[index]['qu']==1)?listmeetcart[index]['qu']==1:listmeetcart[index]['qu']--;
                                                totalAmt = getTotal();
                                              });
                                            },
                                            child:  Icon(
                                                CupertinoIcons.minus_circle_fill
                                            )
                                          ),
                                          Text(
                                            '${listmeetcart[index]['qu']}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25),
                                          ),
                                          InkWell(
                                              onTap: () {
                                                setState(() {
                                                  listmeetcart[index]['qu']++;
                                                  totalAmt = getTotal();
                                                });
                                              },
                                              child: Icon(
                                                CupertinoIcons.plus_circle_fill
                                              )),

                                        ],
                                      ),
                                     ),
                                    SizedBox(width: 20),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            listmeetcart.removeAt(index);
                                            totalAmt = getTotal();
                                          });
                                        },
                                        icon: Icon(
                                          Icons.delete_outline,
                                          color: Colors.grey,
                                        )),

                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),

                      ),

                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(70, 50, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        child: Text(
                          'Total : \$ ${totalAmt.toString()}',
                          style:  TextStyle(
                              color: Colors.black,
                              fontSize: 38,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
               Padding(

                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 100),
                 child: Container(
                   width: 200,
                   height: 50,
                   decoration: BoxDecoration(color: colormeet,borderRadius: BorderRadius.circular(50) ),
                  child: Center(
                    child: Text("Checkout",style: TextStyle(fontSize: 30,color: CupertinoColors.white),),
                  ),
                 ),
               )
              ],
            ),

          )),
    );
  }
}
double getTotal(){
// total in list cart we use int i for index then
  double totalAmt = 0;//defult 0

  for(int i = 0; i < listmeetcart.length; i++){//goes on length

    totalAmt += (listmeetcart[i]['price'] * listmeetcart[i]['qu']);//all values are ad to total variable ;

  }

  return totalAmt;//return the variabile for print

}
