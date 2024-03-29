// import 'package:flutter/material.dart';

// class CategoriesWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//         child: Row(children: [

//           // SINGLE ITEM
//           // for (int i = 0; i < 10; i++)
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Container(
//               padding: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 10,
//                       offset: Offset(0, 3),
//                     )
//                   ]),
//               child: Image.asset(
//                 "images/logo_1.png",
//                 width: 50,
//                 height: 50,
//               ),
//             ),
//           ),

//         ]),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> imagePaths =
      List.generate(3, (index) => "images/logo_${index + 1}.png");

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: List.generate(
            imagePaths.length,
            (index) => CategoryItem(imagePath: imagePaths[index]),
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagePath;

  CategoryItem({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Image.asset(
          imagePath,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
