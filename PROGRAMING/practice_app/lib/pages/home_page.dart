import 'package:flutter/material.dart';
import 'details_page.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Here is My Profile",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
              backgroundColor: Colors.white10),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 11)]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100), // ⬅ Rounded Image
                  child: Image.asset(
                    'assets/images/me.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 12),
                Text('Dhaval Patel',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Flutter Developer'),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      contex,
                      MaterialPageRoute(builder: (context) => DetailsPage()),
                    );
                  },
                  child: Text('View More'),
                )
              ],
            )),
      ),
    );
  }
}
