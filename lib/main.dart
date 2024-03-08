import 'package:flutter/material.dart';

import 'Pages/CartPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/ItemsPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Family Health App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/" : (context) => HomePage(),
        "cartPage" : (context) => CartPage(),
        "itemPage" : (context) => ItemsPage(),
        
      },
    );
  }
}

