import 'package:family_health_app/Widgets/AppBarWidget.dart';
import 'package:flutter/material.dart';

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
                height: 130,
              ),
            )

        ]),
      ),
    );
  }
}
