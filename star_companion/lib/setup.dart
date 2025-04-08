import 'package:flutter/material.dart';
import 'package:star_companion/home.dart';

class InterestsPage extends StatefulWidget {
  @override
  _InterestsPageState createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  final List<String> interests = [
    'Stars',
    'Planets',
    'Galaxies',
    'Black Holes',
    'Nebulae',
    'Space Exploration',
  ];

  final Set<String> selectedInterests = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Interests'),
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
      ),
      backgroundColor: const Color.fromARGB(255, 70, 151, 206),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select topics you are interested in:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: interests.length,
                itemBuilder: (context, index) {
                  final interest = interests[index];
                  final isSelected = selectedInterests.contains(interest);
                  return ListTile(
                    title: Text(
                      interest,
                      style: TextStyle(
                        color: isSelected ? const Color.fromARGB(255, 4, 0, 255) : Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(
                      isSelected ? Icons.check_circle : Icons.circle_outlined,
                      color: isSelected ? const Color.fromARGB(255, 0, 4, 255) : Colors.white70,
                    ),
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedInterests.remove(interest);
                        } else {
                          selectedInterests.add(interest);
                        }
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle the selected interests (e.g., save to database or navigate)
                  print('Selected Interests: $selectedInterests');
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 4, 0, 255),
                ),
                child: Text(
                  'Save Interests',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button background color
                foregroundColor: Colors.blue, // Button text color
                ),
                child: Text('Continue'),
              ),
              ),
            ),
            ],
          
        ),
      ),
    );
  }
}
