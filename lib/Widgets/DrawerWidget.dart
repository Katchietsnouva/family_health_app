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
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Katchiets Nouva",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              accountEmail: Text("philipaswa01@gmail.com",
              style: TextStyle(
                fontSize: 15,
              ),
              ),
            ),
          ),
        ]
      ),
    );

  }
}