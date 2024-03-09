import 'package:flutter/material.dart';

class Service_10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "Post Abortion Care";
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
