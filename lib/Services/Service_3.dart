import 'package:flutter/material.dart';

class Service_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "Ante-natal and Post natal Care";
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
