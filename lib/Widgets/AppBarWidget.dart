import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 3),
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,)
              ],
            ),
            child: Icon(CupertinoIcons.bars),
          ),
        )],),
    );
  }
}
