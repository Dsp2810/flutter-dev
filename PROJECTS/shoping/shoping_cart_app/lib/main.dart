// // import 'package:flutter/material.dart';
// // import 'screens/home_screen.dart';

// // void main() {
// //   runApp(const ShoppingApp());
// // }

// // class ShoppingApp extends StatelessWidget {
// //   const ShoppingApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: '🛒 Shopping List App',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         primarySwatch: Colors.green,
// //         inputDecorationTheme: const InputDecorationTheme(
// //           border: OutlineInputBorder(),
// //         ),
// //       ),
// //       home: const HomeScreen(), // Initial screen
// //     );
// //   }
// // }

// // --

// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext contex) {
//     return MaterialApp(
//       title: "The Demo App",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blueGrey),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "The app",
//             style: TextStyle(fontSize: 25, color: Colors.brown[1000]),
//           ),
//           centerTitle: true,
//         ),
//         // body: Center(
//         //   child: Column(
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     crossAxisAlignment: CrossAxisAlignment.center,
//         //     children: [
//         //       Text("Welcome Dhaval"),
//         //       SizedBox(height: 20),
//         //       ElevatedButton(onPressed: () {}, child: Text("Submit")),
//         //     ],
//         //   ),
//         // ),
//         // body: Column(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     ClipRRect(
//         //       borderRadius: BorderRadiusGeometry.circular(1500),
//         //       child: Image.asset(
//         //         "assets//images//me.jpg",
//         //         height: 200,
//         //         width: 200,
//         //         fit: BoxFit.cover,
//         //       ),
//         //     ),
//         //     SizedBox(height: 35),
//         //     Row(
//         //       mainAxisAlignment: MainAxisAlignment.center,
//         //       children: [
//         //         Icon(Icons.person),
//         //         SizedBox(width: 8),
//         //         Text("Name:Dhaval Patel"),
//         //       ],
//         //     ),
//         //     SizedBox(height: 25),
//         //     Row(
//         //       mainAxisAlignment: MainAxisAlignment.center,
//         //       children: [
//         //         Icon(Icons.phone),
//         //         SizedBox(width: 8),
//         //         Text("Contact:+91 6351139889"),
//         //         SizedBox(height: 15),

//         //       ],
//         //     ),
//         //   ],
//         // ),

//        body: Container(
//           color: Colors.grey[200],
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Text(
//                   "This is padded text (20px all sides)",
//                   style: TextStyle(fontSize: 18, color: Colors.black),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text("Click Me"),
//                 ),
//               ),
//               Container(
//                 height: 100,
//                 color: Colors.blue[100],
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Text(
//                       "Bottom Right",
//                       style: TextStyle(fontSize: 16, color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 height: 100,
//                 color: Colors.green[100],
//                 alignment: Alignment.center,
//                 padding: EdgeInsets.only(left: 50, right: 50),
//                 child: Text(
//                   "Centered with horizontal padding",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ),
//             ],
//           ),
//        ),
//         floatingActionButton: SpeedDial(
//           animatedIcon: AnimatedIcons.menu_home,
//           backgroundColor: Colors.tealAccent,
//           overlayColor: Colors.black,
//           overlayOpacity: 0.4,
//           children: [
//             SpeedDialChild(
//               child: Icon(Icons.add_box_rounded),
//               label: "Add Item",
//               onTap: () => {debugPrint("Add Item Clicked")},
//             ),
//             SpeedDialChild(
//               child: Icon(Icons.edit),
//               label: "Edit Item",
//               onTap: () => {debugPrint("Edit Item Clicked")},
//             ),
//             SpeedDialChild(
//               child: Icon(Icons.delete),
//               label: "Delete Item",
//               onTap: () => {debugPrint("Delete Item Clicked")},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext contex) {
//     return MaterialApp(
//       title: "Here is the Product List..APP",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: ProductShow(),
//     );
//   }
// }

// class ProductShow extends StatelessWidget {
//   ProductShow({super.key});
//   final List<Map<String, dynamic>> list = [
//     {
//       "name": "iPhone 15 Pro",
//       "price": 139999,
//       "image": "assets/images/iphone.jpg",
//     },
//     {
//       "name": "MacBook Air M2",
//       "price": 99999,
//       "image": "assets/images/macbook.jpg",
//     },
//     {
//       "name": "AirPods Pro",
//       "price": 24999,
//       "image": "assets/images/airpods.jpg",
//     },
//     {
//       "name": "Apple Watch Ultra",
//       "price": 89999,
//       "image": "assets/images/watch.jpg",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Product List",
//           style: TextStyle(
//             fontStyle: FontStyle.italic,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Colors.pinkAccent[250],
//       ),
//       body: ListView.builder(
//         itemCount: list.length,
//         itemBuilder: (context, index) {
//           final item = list[index];
//           return Card(
//             elevation: 7,
//             margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: ListTile(
//               leading: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(
//                   item['image'],
//                   height: 100,
//                   width: 80,
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//               title: Text(item['name']),
//               subtitle: Text("Price : ${item['name']}"),
//               trailing: IconButton(
//                 onPressed: () {
//                   ScaffoldMessenger.maybeOf(context)!.showSnackBar(
//                     SnackBar(content: Text("${item['name']} added to cart")),
//                   );
//                 },
//                 icon: Icon(Icons.add_shopping_cart_rounded),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(Myapp());

// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext contex) {
//     return MaterialApp(
//       title: "StateFull App",
//       home: Counterpage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class Counterpage extends StatefulWidget {
//   @override
//   _counterpagestate createState() => _counterpagestate();
// }

// class _counterpagestate extends State<Counterpage> {
//   int cnt = 0;
//   void increment() {
//     setState(() {
//       cnt++;
//     });
//   }

//   @override
//   Widget build(BuildContext contex) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Counter App",
//           style: TextStyle(
//             fontStyle: FontStyle.italic,
//             fontWeight: FontWeight.bold,
//             color: Colors.pinkAccent,
//           ),
//         ),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           // crossAxisAlignment: CrossAxisAlignment.end,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("Count :$cnt", style: TextStyle(fontSize: 24)),
//             ElevatedButton(onPressed: increment, child: Text("increment")),
//           ],
//         ),
//       ),

//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: increment,
//       //   // child: Icon(Icons.add),
//       //   child: Text("Increment the value", style: TextStyle(fontSize: 15)),
//       // ),
//     );
//   }
// }

// import 'dart:async';

// import 'package:flutter/material.dart';

// void main() => runApp(Myapp());

// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: "Here the app",
//       debugShowCheckedModeBanner: false,
//       home: csclass(),
//     );
//   }
// }

// class csclass extends StatefulWidget {
//   const csclass({super.key});

//   @override
//   _counterScreen createState() => _counterScreen();
// }

// class _counterScreen extends State<csclass> {
//   // int cnt = 0;
//   // Timer? _timer;
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   print("Initiated State");
//   //   _timer = Timer.periodic(Duration(seconds: 10), (timer) {
//   //     setState(() {
//   //       cnt++;
//   //     });
//   //   });
//   // }
//   bool ison = false;

//   @override
//   Widget build(BuildContext contex) {
//     // return
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Here is the Stateful widget",
//           style: TextStyle(
//             fontSize: 25,
//             fontStyle: FontStyle.italic,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Switch(
//           value: ison,
//           activeColor: Colors.redAccent,
//           inactiveThumbColor: Colors.greenAccent,
//           inactiveTrackColor: Colors.pinkAccent,
//           onChanged: (value) {
//             setState(() {
//               ison = value;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
//     //     centerTitle: true,
//     //     backgroundColor: Colors.purple,
//     //   ),
//     //   body: Center(child: Text("Count $cnt", style: TextStyle(fontSize: 30))),
//     //   floatingActionButton: FloatingActionButton(
//     //     onPressed: () {
//     //       setState(() {
//     //         cnt++;
//     //       });
//     //     },
//     //     child: Icon(Icons.add),
//     //   ),
//     // );

//   // @override
//   // void dispose() {
//   //   print("Dispose is called");
//   //   _timer?.cancel();
//   //   super.dispose();
//   // }

// now making the toDo app using the AnimatedList

import 'package:flutter/material.dart';

void main() => runApp(x());

class x extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "The To do app",
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final List<String> _todos = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addTodo() {
    setState(() {
      _todos.add(_controller.text);
      _controller.clear();
    });
  }

  void _removeTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List")),
      body: Column(
        children: [
          TextField(controller: _controller),
          SizedBox(height: 15),
          ElevatedButton(onPressed: _addTodo, child: Text("Add")),
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) => ListTile(
                // leading: Text("$index .", style: TextStyle()),
                title: Row(
                  children: [
                    Text(
                      "${index+1}. ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Expanded(child: Text(_todos[index])),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _removeTodo(index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
