import 'package:flutter/material.dart';

class Service_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "HIV Counseling and Testing";
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
