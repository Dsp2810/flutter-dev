import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("📧 Email: dhaval@example.com", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("💻 Skills: Flutter, Firebase, Git", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("📍 Location: Gujarat, India", style: TextStyle(fontSize: 18)),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context); // ⬅ Go back
                },
                icon: Icon(Icons.arrow_back),
                label: Text("Back to Profile"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
