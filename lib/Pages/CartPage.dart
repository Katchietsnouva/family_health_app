import 'package:family_health_app/Widgets/AppBarWidget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  // final List<String> imagePaths =
  //     List.generate(3, (index) => "images/logo_${index + 1}.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Order List",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width:380, 
                      height: 100,
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
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                            // imagePath,
                            "images/orders/order_1.png",
                            width: 120,
                            height: 150,
                            ),
                          )
                        ],
                      ),
                      
                    ),
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}