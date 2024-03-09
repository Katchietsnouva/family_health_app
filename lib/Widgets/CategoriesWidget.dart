// import 'dart:io';
// import 'package:flutter/material.dart';

// class CategoriesWidget extends StatelessWidget {
//   final List<String> imagePaths;

//   CategoriesWidget() : imagePaths = getImagePaths();

//   static List<String> getImagePaths() {
//     Directory directory = Directory("images");
//     List<FileSystemEntity> files = directory.listSync();
//     List<String> paths = files
//         .where((file) => file is File)
//         .map((file) => file.path)
//         .toList();
//     return paths;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//         child: Row(
//           children: List.generate(
//             imagePaths.length,
//             (index) => CategoryItem(imagePath: imagePaths[index]),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final String imagePath;

//   CategoryItem({required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: Container(
//         padding: EdgeInsets.all(2),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 10,
//               offset: Offset(0, 3),
//             )
//           ],
//         ),
//         child: Image.file(
//           File(imagePath),
//           width: 50,
//           height: 50,
//         ),
//       ),
//     );
//   }
// }

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';

// class CategoriesWidget extends StatefulWidget {
//   @override
//   _CategoriesWidgetState createState() => _CategoriesWidgetState();
// }

// class _CategoriesWidgetState extends State<CategoriesWidget> {
//   List<String> imagePaths = [];

//   @override
//   void initState() {
//     super.initState();
//     loadImages();
//   }

//   Future<void> loadImages() async {
//     Directory directory = await getApplicationDocumentsDirectory();
//     // String imagesDirectoryPath = '${directory.path}/images/family_health_clinic/';
//     String imagesDirectoryPath = '${directory.path}/images/';
//     List<FileSystemEntity> files = Directory(imagesDirectoryPath).listSync();

//     setState(() {
//       imagePaths = files
//           .where((file) => file is File && file.path.endsWith('.webp'))
//           .map((file) => file.path)
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//         child: Row(
//           children: List.generate(
//             imagePaths.length,
//             (index) => CategoryItem(imagePath: imagePaths[index]),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final String imagePath;

//   CategoryItem({required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: Container(
//         padding: EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 10,
//               offset: Offset(0, 3),
//             )
//           ],
//         ),
//         child: Image.file(
//           File(imagePath),
//           width: 50,
//           height: 50,
//         ),
//       ),
//     );
//   }
// }

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

// import 'package:flutter/material.dart';

// class CategoriesWidget extends StatelessWidget {
//   final List<String> imagePaths =
//       // List.generate(3, (index) => "images/logo_${index + 1}.png");
//       // List.generate(1, (index) => "images/logo_${index + 1}.webp");
//       // List.generate(3, (index) => "images/family_health_clinic/family_${index + 1}.png");
//       List.generate(10, (index) => "images/services/service_${index + 1}.webp");

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//         child: Row(
//           children: List.generate(
//             imagePaths.length,
//             (index) => CategoryItem(imagePath: imagePaths[index]),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CategoryItem extends StatelessWidget {
//   final String imagePath;

//   CategoryItem({required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: Container(
//         // padding: EdgeInsets.all(2),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 2,
//               blurRadius: 10,
//               offset: Offset(0, 3),
//             )
//           ],
//         ),
//         child: Image.asset(
//           imagePath,
//           width: 100,
//           height: 100,
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> imagePaths =
      List.generate(10, (index) => "images/services/service_${index + 1}.webp");

  final List<String> captions = [
    "General Consultation",
    "Family Planning",
    "Prenatal and Postnatal Care",
    "hiv conselling",
    "sti screening",
    "cervical cancer screening",
    "ultrasound",
    "pharmacy and nutrition",
    "pregnancy crisis counselling",
    "post abortion care"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: List.generate(
            imagePaths.length,
            (index) => CategoryItem(
                imagePath: imagePaths[index], caption: captions[index]),
          ),
        ),
      ),
    );
  }
}


class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String caption;

  CategoryItem({required this.imagePath, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
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
              ],
            ),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 100, // Adjust the width as needed
            child: Text(
              caption,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              // overflow: TextOverflow.ellipsis, // Adjust overflow behavior
            ),
          ),
        ],
      ),
    );
  }
}
