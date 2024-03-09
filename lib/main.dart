import 'package:flutter/material.dart';

import 'Pages/CartPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/ItemsPage.dart';

import 'Services/GeneralConsultation.dart';
import 'Services/Service_2.dart';
import 'Services/Service_3.dart';
import 'Services/Service_4.dart';
import 'Services/Service_5.dart';
import 'Services/Service_6.dart';
import 'Services/Service_7.dart';
import 'Services/Service_8.dart';
import 'Services/Service_9.dart';
import 'Services/Service_10.dart';

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
        "General Consultation" : (context) => GeneralConsultation(),
        "Family Planning and Contraceptives"  : (context) => Service_2(),
        "Ante-natal and Post natal Care" : (context) =>  Service_3(),
        "HIV Counseling and Testing" : (context) => Service_4(),
        "STI Screening" : (context) => Service_5(),
        "Cervical Cancer Screening" : (context) => Service_6(),
        "Laboratory Services and Ultrasound" : (context)  => Service_7(),
        "Pharmacy and Nutrition" : (context) => Service_8(),
        "Pregnancy Crisis Counseling" : (context) => Service_9(),
        "Post Abortion Care" : (context) => Service_10(),
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
