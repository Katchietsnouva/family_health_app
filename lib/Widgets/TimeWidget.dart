import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "TimeWidget";
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
