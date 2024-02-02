import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          backgroundColor: Colors.white,

          body: Column(
            children: [
              Row(
                children: [
                  Container(

                    height: 70, width: 70,
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Image.asset('assest/logo/menu.png'),
                  ),
                  Spacer(),
                  Container(
                    height: 70, width: 70,
                    padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                    child: Image.asset('assest/logo/add.png'),
                  ),
                ],
              ),
              Container(
                width: 500,
                  height: 65,
                  margin: EdgeInsets.fromLTRB(30, 20, 20, 0),
                  child: Text.rich(
                    TextSpan(text: 'Hello\n',style: TextStyle(fontSize: 28,decorationColor: Colors.black87,),
                        children:[ TextSpan(text: 'wellcome to laza',style: TextStyle(fontSize: 18,decorationColor: Colors.black87,),) ]),
                   )
                  ),
               Row(
                 children: [
               Container(
                 height: 50,
                 width: 300,
                   margin: EdgeInsets.fromLTRB(30, 30,40, 20),
                   decoration: BoxDecoration(color: Color(0xFFF5F6FA),image:DecorationImage(image:AssetImage(''))  ,),

               ),
          ]
               )

    ],

          )
      ),
      ),
    );
  }
}