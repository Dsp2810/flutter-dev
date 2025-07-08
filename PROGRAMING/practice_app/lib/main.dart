// import 'package:flutter/material.dart';

// // Entry point of the app
// void main() {
//   runApp(MyApp());
// }

// // Root widget of the app
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simple Scaffold Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: MyHomePage(), // Home screen of the app
//     );
//   }
// }

// // Stateful widget to manage UI state (like navigation tab)
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// // State class where logic lives
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   // List of content widgets for each bottom navigation item
//   final List<Widget> _pages = [
//     Center(child: Text('🏠 Home Page', style: TextStyle(fontSize: 24))),
//     Center(child: Text('🔍 Search Page', style: TextStyle(fontSize: 24))),
//     Center(child: Text('👤 Profile Page', style: TextStyle(fontSize: 24))),
//   ];

//   // Update tab on bottom navigation tap
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   // Show a snackbar when the FAB is pressed
//   void _showSnackBar() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('FAB Clicked! 🚀')),
//     );
//   }

//   // Build the full scaffold layout
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My First Scaffold UI'),
//       ),

//       body: _pages[_selectedIndex], // Main screen content

//       floatingActionButton: FloatingActionButton(
//         onPressed: _showSnackBar,
//         tooltip: 'Add Something',
//         child: Icon(Icons.add_box),
//       ),

//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text('👋 Welcome Dhaval!', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
//             ),
//             ListTile(
//               title: Text('Home'),
//               onTap: () => _onItemTapped(0),
//             ),
//             ListTile(
//               title: Text('Search'),
//               onTap: () => _onItemTapped(1),
//             ),
//             ListTile(
//               title: Text('Profile'),
//               onTap: () => _onItemTapped(2),
//             ),
//           ],
//         ),
//       ),

//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),

//       persistentFooterButtons: [
//         TextButton(
//           onPressed: () => print('Contact Clicked'),
//           child: Text('Contact'),
//         ),
//         TextButton(
//           onPressed: () => print('Help Clicked'),
//           child: Text('Help'),
//         ),
//       ],
//     );
//   }
// }

//2
// import 'package:flutter/material.dart';

// // ✅ Global theme controller
// ValueNotifier<bool> isdark = ValueNotifier(false);

// void main() => runApp(DashboardApp());

// class DashboardApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//       valueListenable: isdark,
//       builder: (context, bool isDark, _) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Dhaval\'s Dashboard',
//           theme: ThemeData.light(),
//           darkTheme: ThemeData.dark(),
//           themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
//           home: DashboardHome(),
//         );
//       },
//     );
//   }
// }

// class DashboardHome extends StatefulWidget {
//   @override
//   __dashboardHomeState createState() => __dashboardHomeState();
// }

// class __dashboardHomeState extends State<DashboardHome> {
//   int s_indx = 0;

//   final List<Widget> pages = [];

//   @override
//   void initState() {
//     super.initState();
//     pages.addAll([_buildHomePage(), _buildProfilePage(), _buildSettingsPage()]);
//   }

//   void _onItemTapped(int indx) {
//     setState(() {
//       s_indx = indx;
//     });
//   }

//   void _showSnackBar() {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(SnackBar(content: Text("FAB Pressed")));
//   }

//   // ✅ Home Page
//   Widget _buildHomePage() {
//     return Center(
//       child: Text('WELCOME DHAVAL!', style: TextStyle(fontSize: 25)),
//     );
//   }

//   // ✅ Profile Page
//   Widget _buildProfilePage() {
//     return Center(
//       child: Card(
//         elevation: 6,
//         margin: EdgeInsets.all(16),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               CircleAvatar(
//                 radius: 60,
//                 backgroundImage: AssetImage('assets/images/23CS060_DHAVAL.jpg'),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Dhaval Patel',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'Flutter Developer',
//                 style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//               ),
//               SizedBox(height: 10),
//               ElevatedButton.icon(
//                 onPressed: () => print('Profile Button Tapped'),
//                 icon: Icon(Icons.edit),
//                 label: Text('Edit Profile'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ✅ Settings Page with Dark Mode Toggle
//   Widget _buildSettingsPage() {
//     return Center(
//       child: ValueListenableBuilder<bool>(
//         valueListenable: isdark,
//         builder: (context, value, _) {
//           return SwitchListTile(
//             title: Text('Dark Mode'),
//             value: value,
//             onChanged: (val) {
//               isdark.value = val;
//             },
//           );
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Dashboard'),
//         actions: [
//           IconButton(
//             onPressed: () => print("Notification Tapped"),
//             icon: Icon(Icons.notifications),
//           ),
//         ],
//       ),
//       body: pages[s_indx],

//       // ✅ Drawer Menu
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text('Dhaval Patel'),
//               accountEmail: Text('dsp@example.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
//               ),
//             ),
//             ListTile(title: Text('Home'), onTap: () => _onItemTapped(0)),
//             ListTile(title: Text('Profile'), onTap: () => _onItemTapped(1)),
//             ListTile(
//               title: Text('Settings'),
//               onTap: () => _onItemTapped(2), // ✅ Fixed from 0 to 2
//             ),
//           ],
//         ),
//       ),

//       // ✅ Floating Action Button
//       floatingActionButton: FloatingActionButton(
//         onPressed: _showSnackBar,
//         child: Icon(Icons.message),
//       ),

//       // ✅ Bottom Navigation
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: s_indx,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.blueAccent,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//       ),

//       // ✅ Persistent Footer
//       persistentFooterButtons: [
//         TextButton(
//           onPressed: () => print('About Tapped'),
//           child: Text('About'),
//         ),
//         TextButton(
//           onPressed: () => print('Logout Tapped'),
//           child: Text('Logout'),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(Myapp());

// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext contex) {
//     return MaterialApp(
//       title: 'To Do Manager',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch:Colors.red),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   TodoHomePageState createState() => TodoHomePageState();
// }

// class TodoHomePageState extends State<MyHomePage> {
//   final TextEditingController _taskcontrol = TextEditingController();
//   final List<Map<String, dynamic>> _tasks = [];

//   void _addTask() {
//     final String task = _taskcontrol.text.trim();
//     if (task.isEmpty) return;
//     setState(() {
//       _tasks.add({'text': task, 'done': false});
//       _taskcontrol.clear();
//     });
//   }

//   void _toggleDone(int index) {
//     setState(() {
//       _tasks[index]['done'] = !_tasks[index]['done'];
//     });
//   }
//     void _delTask(int index) {
//       setState(() {
//         _tasks.removeAt(index);
//       });
//     }
//   @override
//     Widget build(BuildContext contex) {
//       return Scaffold(
//         appBar: AppBar(title: Text('My To Do List'), centerTitle: true),
//         body: Padding(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             children: [
//               TextField(
//                 controller: _taskcontrol,
//                 decoration: InputDecoration(
//                   labelText: 'Enter a Task',

//                   border: OutlineInputBorder(),
//                   labelStyle: TextStyle(color: Colors.amberAccent),
//                   suffixIcon: IconButton(
//                     onPressed: _addTask,
//                     icon: Icon(Icons.add),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               Expanded(
//                 child: _tasks.isEmpty
//                     ? Center(child: Text('No Tasks Yet,Add One !'))
//                     : ListView.builder(
//                         itemCount: _tasks.length,
//                         itemBuilder: (contex, index) {
//                           return Card(
//                             child: CheckboxListTile(
//                               title: Text(
//                                 _tasks[index]['text'],
//                                 style: TextStyle(
//                                   decoration: _tasks[index]['done']
//                                       ? TextDecoration.lineThrough
//                                       : null,
//                                 ),
//                               ),
//                               value: _tasks[index]['done'],
//                               onChanged: (_) => _toggleDone(index),
//                               secondary: IconButton(
//                                 onPressed: () => _delTask(index),
//                                 icon: Icon(
//                                   Icons.delete,
//                                   color: Colors.redAccent,
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//   }

