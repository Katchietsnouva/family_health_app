import 'package:flutter/material.dart';

import 'Pages/CartPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/ItemsPage.dart';

import 'Services/GeneralConsultation.dart';

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
        "GeneralConsultation0" : (context) => GeneralConsultation(), 
        // for (int i = 0; i < captions.length; i++)
        //   "${captions[i]}$i": (context) => ServicePage(i + 1), // Assuming ServicePage accepts an index
      },
    );
  }
}


// lib/
//   ├── Pages/
//   │    ├── CartPage.dart
//   │    ├── HomePage.dart
//   │    ├── ItemsPage.dart
//   │    └── ServicePage.dart   // Create a new Dart file for general ServicePage
//   ├── Services/
//   │    ├── GeneralConsultation.dart
//   │    ├── FamilyPlanning.dart
//   │    ├── PrenatalPostnatalCare.dart
//   │    └── ...                // Create Dart files for each specific service
//   ├── Widgets/
//   │    ├── CategoriesWidget.dart
//   │    └── CategoryItem.dart
//   └── main.dart
