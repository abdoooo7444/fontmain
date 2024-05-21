// import 'package:ect_project/NavBar.dart';
// import 'package:ect_project/CinemaListPage.dart';
// import 'package:ect_project/FoodPage.dart';
// import 'package:ect_project/homepage.dart';
// import 'package:flutter/material.dart';

// class botnavbar extends StatefulWidget {
//   const botnavbar({super.key});

//   @override
//   State<botnavbar> createState() => _botnavbarState();
// }

// class _botnavbarState extends State<botnavbar> {
//   int currenty = 0;
//   List screens = [
//     MyMoviesApp(),
//     CinemaListPage(),
//     FoodPage(),
//     NavBar(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red,
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.border_all_rounded),
//             label: 'cinema',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.fastfood_outlined),
//             label: 'food',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.more_vert_sharp),
//             label: 'More',
//           ),
        
//         ],
//         backgroundColor: Colors.red,
//         elevation: 5.0,
//         type: BottomNavigationBarType.fixed,
//         selectedFontSize: 25.0,
//         selectedIconTheme: IconThemeData(
//           color: Colors.black,
//           size: 20.0,
//         ),
//         selectedItemColor: Colors.black,
//         selectedLabelStyle: TextStyle(
//           color: Colors.black,
//           fontSize: 20.0,
//           fontWeight: FontWeight.normal,
//         ),
//         unselectedFontSize: 25.0,
//         unselectedIconTheme: IconThemeData(
//           color: Colors.black,
//           size: 20.0,
//         ),
//         unselectedItemColor: Colors.black,
//         unselectedLabelStyle: TextStyle(
//           color: Colors.black,
//           fontSize: 15.0,
//           fontWeight: FontWeight.normal,
//         ),
//         currentIndex: 0,
//         onTap: (index) {
//           setState(() {
//             currenty = index;
//           });
//         },
//       ),
//       body: screens[currenty],
//     );
//   }
// }
