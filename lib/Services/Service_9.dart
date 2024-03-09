import 'package:flutter/material.dart';

class Service_9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "Pregnancy Crisis Counseling";
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
