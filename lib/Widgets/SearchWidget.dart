import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.search,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "What would you like to have?",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Icon(Icons.filter_list),
            ],
          ),
        ),
      ),
    );
  }
}





          // // SEARCH
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     vertical:10,
          //     horizontal: 15,
          //   ),
          //   child: Container(
          //     width: double.infinity,
          //     height: 50,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(20),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 2,
          //           blurRadius: 10,
          //           offset: Offset(0, 3),
          //         ),
          //       ]
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(
          //         horizontal: 10,
          //       ),
          //       child: Row( children: [
          //         Icon(
          //           CupertinoIcons.search, 
          //           color: Colors.red,
          //         ),
          //         Container( 
          //           height: 50,
          //           width: 300,
          //           child: Padding(
          //             padding: EdgeInsets.symmetric(
          //               horizontal: 15,
          //               ),
          //             child: TextFormField(
          //               decoration: InputDecoration(
          //                 hintText: "What would you like to have?",
          //                 border: InputBorder.none,
          //               ),                    
          //             ),
          //           ),
          //         ),
          //         Icon(Icons.filter_list),
          //       ],
          //       ),
          //     ),
          //   ),            
          // ),
            