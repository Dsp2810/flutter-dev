// import 'package:flutter/material.dart';
// import 'screens/home_screen.dart';

// void main() {
//   runApp(const ShoppingApp());
// }

// class ShoppingApp extends StatelessWidget {
//   const ShoppingApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '🛒 Shopping List App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         inputDecorationTheme: const InputDecorationTheme(
//           border: OutlineInputBorder(),
//         ),
//       ),
//       home: const HomeScreen(), // Initial screen
//     );
//   }
// }

// --

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      title: "The Demo App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "The app",
            style: TextStyle(fontSize: 25, color: Colors.brown[1000]),
          ),
          centerTitle: true,
        ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Text("Welcome Dhaval"),
        //       SizedBox(height: 20),
        //       ElevatedButton(onPressed: () {}, child: Text("Submit")),
        //     ],
        //   ),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(1500),
              child: Image.asset(
                "assets//images//me.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text("Name:Dhaval Patel"),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text("Contact:+91 6351139889"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
