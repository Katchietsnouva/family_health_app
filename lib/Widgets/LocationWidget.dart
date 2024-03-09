import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pageIdentification = "LocationWidget";
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
