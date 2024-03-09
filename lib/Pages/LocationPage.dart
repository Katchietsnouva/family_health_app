import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LocationPage extends StatelessWidget {
  final List<String> imagePaths =
      List.generate(14, (index) => "images/location/location_${index + 1}.jpeg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            AppBar(
              title: Text("LocationPage"),
            ),
            for (int i = 0; i < imagePaths.length; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 200,
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
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            imagePaths[i],
                            width: 2000,
                            height: 200,
                          ),
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
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}






















// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class LocationPage extends StatelessWidget {
//   final List<String> imagePaths =
//       List.generate(14, (index) => "images/location/location_${index + 1}.jpeg");

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//         child: ListView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: imagePaths.length,
//           itemBuilder: (BuildContext context, int i) {
//             return Padding(
//               padding: EdgeInsets.symmetric(vertical: 10),
//               child: Container(
//                 width: 380,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 3,
//                       blurRadius: 10,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: EdgeInsets.all(8),
//                         child: Image.asset(
//                           imagePaths[i],
//                           width: 120,
//                           height: 150,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 170,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text(
//                             "Hot Wall Neons",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }













// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class LocationPage extends StatelessWidget {
//   final List<String> imagePaths =
//       List.generate(14, (index) => "images/location/location_${index + 1}.jpeg");

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       // scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//         child: Column(
//           children: [
            

//             // SINGLE ITEM
//             // for (int i = 0; i < 10; i++)
//             // Display all items
//             for (int i = 0; i < imagePaths.length; i++)
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 10),
//               child: Container(
//                 width: 380,
//                 height: 150,
//                 // padding: EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 3,
//                         blurRadius: 10,
//                         offset: Offset(0, 3),
//                       )
//                     ],),
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () {},                      
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: EdgeInsets.all(8),
//                         child: Image.asset(
//                         imagePaths[i],
//                         // "images/newest/logo_1.png",
//                         width: 120,
//                         height: 150,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 170,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text(
//                             "Hot Wall Neons",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ]
//                       ),
//                     ),
//                   ]
//                 ),
//               ),
//             ),
//           ]
//         ),
//       ),
//     );
//   }
// }



// // It seems like you have a common issue when using SingleChildScrollView with a column of widgets that contains InkWell and GestureDetector widgets, especially when they are placed inside ListView or Column and wrapped with a SingleChildScrollView. This often results in rendering errors due to a conflict in gestures.

// // To fix this, you can try using ListView.builder instead of a Column with a loop. Here's an updated version of your code:

// // This approach ensures that the SingleChildScrollView is used at the root level, and the ListView.builder takes care of the list items. Additionally, I've set physics to NeverScrollableScrollPhysics() for the ListView.builder to avoid conflicts with the outer SingleChildScrollView.