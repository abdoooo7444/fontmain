import 'package:flutter/material.dart';
//import 'dart:io'; //import exited
import 'package:ect_project/Policies.dart'; 
// import 'package:ect_project/NotificationsPage.dart';
// import 'package:ect_project/FavoritesPage.dart';
// import 'package:ect_project/SharePage.dart';
import 'package:ect_project/AboutPage.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text(
          'More',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          
          // ListTile(
          //   leading: Icon(Icons.favorite),
          //   title: Text('Favorites'),
          //   onTap: () => Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => FavoritesPage()),
          //   ),
          // ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.share),
          //   title: Text('share'),
          //   onTap: () => Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => SharePage()),
          //   ),
          // ),
          // Divider(),
          // ListTile(
          //   title: Text('Natifications'),
          //   leading: Icon(Icons.notifications),
          //   onTap: () => Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => NotificationsPage()),
          //   ),
          // ),
          Divider(),
          ListTile(
            title: Text('Policies'),
            leading: Icon(Icons.local_police),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Policies()),
            ),
          ),
            Divider(),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            ),
          ),
        ],
      ),
    );
  }
}
