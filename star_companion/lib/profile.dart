//create a page that shows the user's selected interests and their geographic location
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final List<String> interests = ['Astronomy', 'Space Exploration', 'Astrophotography'];
  final String location = 'San Francisco, CA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selected Interests:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ...interests.map((interest) => Text('- $interest')).toList(),
            SizedBox(height: 16),
            Text(
              'Location:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(location),
          ],
        ),
      ),
    );
  }
}