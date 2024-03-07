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
            for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 260,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/popular/logo_1.png"),
                        // width: 50,
                        height: 140,
                      ),
                      Text("Hot Graphiti",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 4),


                      // Scrollable text
                      Container(
                        height: 50, // Set a fixed height or use constraints
                        child: SingleChildScrollView(
                          child: Text(
                            "Have the best of our arts, a really long description that may not fit in a single line and should be scrollable if it exceeds the available space.",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),

                      // Text("Have the best of out arts",
                      // style: TextStyle(
                      //   fontSize: 10,
                      // ),),


                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$10", style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),),
                          Icon(Icons.favorite_border_outlined,
                          color: Colors.red,
                          size: 26,)
                        ],
                      )
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









// import 'package:flutter/material.dart';

// class PopularItemsWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 225, // Set a fixed height or use constraints
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.symmetric(horizontal: 7),
//             child: Container(
//               width: 170,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 10,
//                     offset: Offset(0, 3),
//                   )
//                 ],
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       child: Image.asset("images/popular/logo_1.png"),
//                       height: 130,
//                     ),
//                     Text(
//                       "Hot Graphiti",
//                       style: TextStyle(
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       "Have the best of our arts",
//                       style: TextStyle(
//                         fontSize: 10,
//                       ),
//                     ),
//                     SizedBox(height: 12),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "\$10",
//                           style: TextStyle(
//                             fontSize: 17,
//                             color: Colors.red,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Icon(
//                           Icons.favorite_border_outlined,
//                           color: Colors.red,
//                           size: 26,
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }









// import 'package:flutter/material.dart';

// class PopularItemsWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 225, // Set a fixed height or use constraints
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 3,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.symmetric(horizontal: 7),
//             child: Container(
//               width: 170,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 10,
//                     offset: Offset(0, 3),
//                   )
//                 ],
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       child:
//                           Image.asset("images/popular/logo_${index + 1}.png"),
//                       height: 130,
//                     ),
//                     Text(
//                       "Hot Graphiti",
//                       style: TextStyle(
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       "Have the best of our arts",
//                       style: TextStyle(
//                         fontSize: 10,
//                       ),
//                     ),
//                     SizedBox(height: 12),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "\$10",
//                           style: TextStyle(
//                             fontSize: 17,
//                             color: Colors.red,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Icon(
//                           Icons.favorite_border_outlined,
//                           color: Colors.red,
//                           size: 26,
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

