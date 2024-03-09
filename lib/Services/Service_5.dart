import 'package:flutter/material.dart';

class Service_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "STI Screening";
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
