import 'package:family_health_app/Widgets/AppBarWidget.dart';
import 'package:flutter/cupertino.dart';
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



                  // SINGLE ITEM 
                  for (int i = 0; i < 10; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width:380, 
                      height: 160,
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
                          ),
                          Container(
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Hot Wall Neons",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                // Scrollable text
                                Container(
                                  height:40, // Set a fixed height or use constraints
                                  width: 170,
                                  child: SingleChildScrollView(
                                    child: Text(
                                      "Have the best of our arts, a really long description that may not fit in a single line and should be scrollable if it exceeds the available space.",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),

                                Text(
                                  "\$10",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                                ),
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                ),
                              ],
                            ),)
                          ),                
                        ],
                      ),                      
                    ),
                  ),



                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      padding: EdgeInsets.all(20),
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

                        child: Column(
                          children: [
                            


                            // TOTAL ITEMS
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10, 
                              ),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Items: ",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1, // Adjust the height of the line as needed
                              color: Colors.black,
                            ),


                            // TOTAL ITEM PRICE
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10, 
                              ),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sub-Total: ",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "\$60",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1, // Adjust the height of the line as needed
                              color: Colors.black,
                            ),


                            // DELIVERY PRICE
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10, 
                              ),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery: ",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "\$20",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1, // Adjust the height of the line as needed
                              color: Colors.black,
                            ),



                            // GRAND TOTAL 
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10, 
                              ),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total: ",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    "\$80",
                                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1, // Adjust the height of the line as needed
                              color: Colors.black,
                            ),




                            
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
