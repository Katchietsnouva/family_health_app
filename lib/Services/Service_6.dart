import 'package:flutter/material.dart';

class Service_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "Cervical Cancer Screening";
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
