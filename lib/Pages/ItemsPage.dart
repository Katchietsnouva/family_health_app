import 'package:family_health_app/Widgets/AppBarWidget.dart';
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
                children: [
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
        ]),
      ),
    );
  }
}
