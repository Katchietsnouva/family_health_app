import 'package:flutter/material.dart';

class Service_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "Pharmacy and Nutrition";
    return Scaffold(
      appBar: AppBar(
        title: Text(pageIdentification),
      ),
      body: Center(
        child: Text('This is the page for  $pageIdentification '),
      ),
    );
  }
}
