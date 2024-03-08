import 'package:family_health_app/Widgets/AppBarWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemsPage extends StatelessWidget {
  final List<String> imagePaths =
      List.generate(3, (index) => "images/newest/logo_${index + 1}.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scrollDirection: Axis.horizontal,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "images/popular/logo_1.png",
                // width: 50,
                height: 300 ,
              ),
            ),
            Container(
              height: 100,
              child: Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 30, 
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 60, bottom: 10),
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        Text("\$10", 
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                                      
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot Deal", 
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 90, 
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: 
              Text("The error in your code is caused by the Arc widget from clippy_flutter being placed inside a ListView. The Arc widget tries to take infinite height, but ListView gives its children an infinite height as well. This results in a conflict. To fix this issue, you can wrap the Arc widget with a container and set a specific height for it. Here's an example:", 
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                children: [
                  Text("Delivery Time", 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5
                    ), 
                    child: Icon(
                      CupertinoIcons.clock,
                    ),
                  ),
                  Text("30 Minutes", 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                  ),
                  
              ],
            )
              
          ),
        ]),
      ),
    );
  }
}
