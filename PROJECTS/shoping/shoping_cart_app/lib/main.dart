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

// import 'package:flutter/material.dart';

// void main() => runApp(x());

// class x extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: "The To do app",
//       debugShowCheckedModeBanner: false,
//       home: TodoApp(),
//     );
//   }
// }

// class TodoApp extends StatefulWidget {
//   @override
//   _TodoAppState createState() => _TodoAppState();
// }

// class _TodoAppState extends State<TodoApp> {
//   final List<String> _todos = [];
//   final TextEditingController _controller = TextEditingController();

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _addTodo() {
//     setState(() {
//       _todos.add(_controller.text);
//       _controller.clear();
//     });
//   }

//   void _removeTodo(int index) {
//     setState(() {
//       _todos.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("To-Do List")),
//       body: Column(
//         children: [
//           TextField(controller: _controller),
//           SizedBox(height: 15),
//           ElevatedButton(onPressed: _addTodo, child: Text("Add")),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _todos.length,
//               itemBuilder: (context, index) => ListTile(
//                 // leading: Text("$index .", style: TextStyle()),
//                 title: Row(
//                   children: [
//                     Text(
//                       "${index+1}. ",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(width: 5),
//                     Expanded(child: Text(_todos[index])),
//                   ],
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: () => _removeTodo(index),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProfileScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   String name = "Dhaval S Patel";
//   String bio = "Flutter Developer | Loves UI Design";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CircleAvatar(
//                 radius: 60,
//                 backgroundImage: AssetImage("assets/me.jpg"),
//               ),
//               SizedBox(height: 28),
//               Text(
//                 name,
//                 style: TextStyle(fontSize: 24, color: Colors.black),
//               ),
//               SizedBox(height: 19),
//               Text(
//                 bio,
//                 style: TextStyle(fontSize: 18, color: Colors.grey[700]),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 45),
//               ElevatedButton(
//                 onPressed: () {
//                   print("Edit Button Clicked");
//                 },
//                 child: Text("Edit"),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor:Colors.greenAccent,
//                   foregroundColor: Colors.black,
//                   padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// now creating the app for the product management..

import 'package:flutter/material.dart';
import './models/product.dart';
import './widgets/product_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      title: "Product App",
      debugShowCheckedModeBanner: false,
      home: productList(),
    );
  }
}

class productList extends StatefulWidget {
  @override
  productList_state createState() => productList_state();
}

class productList_state extends State<productList> {
  List<Product> products = [
    Product(
      name: "iPhone 15 Pro",
      imgUrl:
          "https://cdn.jiostore.online/v2/jmd-asp/jdprod/wrkr/products/pictures/item/free/original/PX0gSKTmub-apple-iphone-15-128gb-yellow-493839311-i-1-1200wx1200h.jpeg",
    ),
    Product(
      name: "MacBook M2",
      imgUrl:
          "https://i.insider.com/632c66b0f576c60018fc3421?width=2000&format=jpeg&auto=webp",
    ),
    Product(
      name: "Apple Watch Ultra",
      imgUrl:
          "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/MYPD3ref_VW_34FR+watch-case-49-titanium-black-ultra2_VW_34FR+watch-face-49-ocean-ultra2_VW_34FR_GEO_IN?wid=5120&hei=3280&bgc=fafafa&trim=1&fmt=p-jpg&qlt=80&.v=VEREVGFsQzRDQXZXemdUckh4dmo3M2pDV2hhem5qNnpDenFtKzI1OXdzWjRaeVR4RW9XWXhWVHRHeXZEa3AwcGZsNDErT2hQbWVmS0VCWlVweVY1UHBiVmVXUVJPYnV1S0FZc3FMLzd3SDRnWGJhejlLNXhYODlVTzA3R2NWaFBKVlBQa05Uc00ycDBPRHh5bVJ3cUgwSzgySUpseHY2YmYwNVhHWVk4TmZ0QUM0VzY0ZFZ0S21LTGc3Snk3TVBjOWE5RkJ2dEY1c1pRZkdGUUtnZHBSWnhPS2tpZ2Y2b3RwaGxjbko0ZVl0RQ",
    ),
  ];
  void toglleFav(int indx) {
    setState(() {
      products[indx].isFav = !products[indx].isFav;
    });
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List"), centerTitle: true),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) =>ProductCard(
          product_ :products[index],
          onFavtoggle:()=>toglleFav(index), 
        ) ,
      ),
    );
  }
}
