// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// import '../Widgets/DrawerWidget.dart';
// import '../Widgets/SearchWidget.dart';
// import '../Widgets/AppBarWidget.dart';
// import '../Widgets/ServicesWidget.dart';
// import '../Widgets/PopularItemsWidget.dart';
// import '../Widgets/NewestItemsWidget.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           AppBarWidget(),

//           // SEARCH
//           SearchWidget(),

//           // DETAILS SECTION
//           Padding(
//             padding: EdgeInsets.only(top: 20, left: 10),
//             child: Text(
//               "Details",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//           ),

//           // SERVICE CATEGOIES (Tab 1)
//           ServicesWidget(),

//           //location tab (tab 2)
//           locationWidget(),


//           // POPULAR WIDGET
//           Padding(
//             padding: EdgeInsets.only(top: 20, left: 10),
//             child: Text(
//               "Popular",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//           ),

//           PopularItemsWidget(),

//           // NEWEST ARRRIVAL WIDGET
//           Padding(
//             padding: EdgeInsets.only(top: 20, left: 10),
//             child: Text(
//               "Newest",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//           ),

//           NewestItemsWidget(),
//         ],
//       ),

//       // DRAWER
//       drawer: DrawerWidget(),
//       floatingActionButton: Container(
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 3,
//                 blurRadius: 10,
//                 offset: Offset(0, 3),
//               )
//             ]),
//         child: FloatingActionButton(
//           onPressed: () {
//             Navigator.pushNamed(context, "cartPage");
//           },
//           child: Icon(
//             CupertinoIcons.cart,
//             size: 28,
//             color: Colors.red,
//           ),
//           backgroundColor: Colors.white,
//         ),
//       ),
//     );
//   }
// }




















// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// import '../Widgets/DrawerWidget.dart';
// import '../Widgets/SearchWidget.dart';
// import '../Widgets/AppBarWidget.dart';
// import '../Widgets/ServicesWidget.dart';
// import '../Widgets/PopularItemsWidget.dart';
// import '../Widgets/NewestItemsWidget.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//             tabs: [
//               Tab(text: 'Services'),
//               Tab(text: 'Location'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             // Services tab
//             ListView(
//               children: [
//                 SearchWidget(),

//                 Padding(
//                   padding: EdgeInsets.only(top: 20, left: 10),
//                   child: Text(
//                     "Services",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),

//                 ServicesWidget(),

//                 Padding(
//                   padding: EdgeInsets.only(top: 20, left: 10),
//                   child: Text(
//                     "Popular",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),

//                 PopularItemsWidget(),

//                 Padding(
//                   padding: EdgeInsets.only(top: 20, left: 10),
//                   child: Text(
//                     "Newest",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),

//                 NewestItemsWidget(),
//               ],
//             ),

//             // Location tab
//             Center(
//               child: Text(
//                 "Location Content Goes Here",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // DRAWER
//         drawer: DrawerWidget(),
//         floatingActionButton: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 3,
//                 blurRadius: 10,
//                 offset: Offset(0, 3),
//               )
//             ],
//           ),
//           child: FloatingActionButton(
//             onPressed: () {
//               Navigator.pushNamed(context, "cartPage");
//             },
//             child: Icon(
//               CupertinoIcons.cart,
//               size: 28,
//               color: Colors.red,
//             ),
//             backgroundColor: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../Widgets/DrawerWidget.dart';
import '../Widgets/SearchWidget.dart';
import '../Widgets/AppBarWidget.dart';
import '../Widgets/ServicesWidget.dart';
import '../Widgets/LocationWidget.dart';  /
import '../Widgets/PopularItemsWidget.dart';
import '../Widgets/NewestItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        body: ListView(
          children: [
            AppBarWidget(),

            // SEARCH
            SearchWidget(),

            // DETAILS SECTION
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // TAB BAR
            TabBar(
              tabs: [
                Tab(text: 'Services'),  // First tab
                Tab(text: 'Location'),  // Second tab
              ],
            ),

            // TAB BAR VIEW
            Container(
              height: 0,  // Set the height for tab content
              child: TabBarView(
                children: [
                  // SERVICE CATEGORIES (Tab 1)
                  ServicesWidget(),

                  // LOCATION TAB (Tab 2)
                  LocationWidget(),
                ],
              ),
            ),

            // POPULAR WIDGET
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Popular",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            PopularItemsWidget(),

            // NEWEST ARRIVAL WIDGET
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Newest",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            NewestItemsWidget(),
          ],
        ),

        // DRAWER
        drawer: DrawerWidget(),
        floatingActionButton: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart,
              size: 28,
              color: Colors.red,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
