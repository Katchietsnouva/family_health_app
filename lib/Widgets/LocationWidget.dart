// import 'package:flutter/material.dart';

// class LocationWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String pageIdentification = "LocationWidget";
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(pageIdentification),
//       ),
//       body: Center(
//         child: Text('This is the page for  $pageIdentification '),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  final List<String> imagePaths =
      List.generate(2, (index) => "images/location/location_${index + 1}.jpeg");

  final List<String> captions = [
    "Physical location",
    "Find on Google maps",

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
              imagePath: imagePaths[index],
              caption: captions[index],
              onTap: () {
                // Handle the tap event for the specific category
                // print('Tapped on ${captions[index]}');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ServicePage(captions[index])),
                // );
                // Navigator.pushNamed(context, "itemPage");
                Navigator.pushNamed(
                  context,
                  captions[index],
                );
                // You can navigate to a new screen or perform other actions here
              },
            ),
          ),
        ),
      ),
    );
  }
}



class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String caption;
  final VoidCallback? onTap;

  CategoryItem({required this.imagePath, required this.caption, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
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
                width: 150,
                height: 150,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 100,
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: onTap,
                child: Text(
                  caption,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

