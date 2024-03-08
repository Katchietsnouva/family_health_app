import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  final List<String> imagePaths =
      List.generate(3, (index) => "images/newest/logo_${index + 1}.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scrollDirection: Axis.horizontal,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(children: [

        ]),
      ),
    );
  }
}
