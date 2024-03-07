import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("images/logo_1.png"),
          ),
          )
        ],),
      ),
    );
  }
}
