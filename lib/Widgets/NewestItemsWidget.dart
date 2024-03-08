import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget {
  final List<String> imagePaths =
      List.generate(3, (index) => "images/newest/logo_${index + 1}.png");

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            

            // SINGLE ITEM
            for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},                      
                      child: Container(
                        alignment: Alignment.center,
                        // padding: EdgeInsets.all(8),
                        child: Image.asset(
                        // imagePath,
                        "images/newest/logo_1.png",
                        width: 120,
                        height: 150,
                        ),
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Hot Wall Neons",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // Scrollable text
                          Container(
                            height:60, // Set a fixed height or use constraints
                            width: 60,
                            child: SingleChildScrollView(
                              child: Text(
                                "Have the best of our arts, a really long description that may not fit in a single line and should be scrollable if it exceeds the available space.",
                                style: TextStyle(
                                  fontSize: 5,
                                ),
                              ),
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction:Axis.horizontal, 
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.red),
                            onRatingUpdate: (index){},
                          ),

                          Text("\$10", style: TextStyle(
                            fontSize: 10,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.red, size: 26),
                        Icon(CupertinoIcons.cart, color: Colors.red, size: 26),
                      ],
                    ),),
                
                    
                  ],
                ),
              ),
              
            )
          ],
        ),
      ),
    );
  }
}
