import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            // SINGLE ITEM
            // for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),                    
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),                                          
                      ),

                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // alignment: Alignment.center,
                        child: Image.asset("images/popular/logo_1.png"),
                        // width: 50,
                        height: 130,
                      ),
                      Text("Hot Graphiti",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 4),
                      Text("Have the best of out arts",
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                      SizedBox(height: 12),

                    ],


                  ),
                ),
              ),
            ),


        ]),
      )

    );
  }
}
