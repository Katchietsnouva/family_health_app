import 'package:flutter/cupertino.dart';
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
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/profileImages/avatar_1.png"),
              ),
            ),
          ),

          // LIST TILE HOME
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE PERSON
          ListTile(
            leading: Icon(Icons.person,
            color: Colors.red,
            ),
            title: Text(
              "My account",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(CupertinoIcons.cart_fill,
            color: Colors.red,
            ),
            title: Text(
              "My orders",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(CupertinoIcons.heart_fill,
            color: Colors.red,
            ),
            title: Text(
              "My wish list",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(CupertinoIcons.settings_solid,
            color: Colors.red,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.exit_to_app,
            color: Colors.red,
            ),
            title: Text(
              "Log out",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

                    // LIST TILE
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


        ]
      ),
    );

  }
}