import 'package:flutter/material.dart';

class Service_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "Family Planning and Contraceptives";
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
