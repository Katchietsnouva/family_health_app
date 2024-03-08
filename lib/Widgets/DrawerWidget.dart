import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  // final List<String> imagePaths =
  //     List.generate(3, (index) => "images/newest/logo_${index + 1}.png");

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Katchiets Nouva"),
              accountEmail: Text("philipaswa01@gmail.com"),
            ),
          ),
        ]
      ),
    );

  }
}