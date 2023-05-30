// import 'package:assignment_flutter/views/product_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:assignment_flutter/views/home_screen.dart';
//
// class Screens extends StatefulWidget {
//   const Screens({Key? key}) : super(key: key);
//
//   @override
//   State<Screens> createState() => _ScreensState();
// }
//
// class _ScreensState extends State<Screens> {
//
//   int selectedIndex = 0;
//
//   void navigate(int index){
//     setState(() {
//       selectedIndex = index;
//     });
//   }
//
//   final List<Widget> _screens = [
//     HomeScreen(),
//     ProductScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         onTap: navigate,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: "Products",
//           ),
//         ],
//       ),
//     );
//   }
// }
