import 'package:flutter/material.dart';
import 'package:star_companion/setup.dart';
// import 'package:zhi_starry_sky/starry_sky.dart'; // Removed as the package does not exist

void main() {
  runApp(const AstronomyApp());
}

class AstronomyApp extends StatelessWidget {
  const AstronomyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'Star Companion',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomePage(),
      ),
    );
  }
}
//MARK: Welcome Page
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 44, 56, 219),
            //add the background image here, import later
            // image: DecorationImage(
            //   image: AssetImage('assets/stars_background.png'),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Star Companion!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Explore the wonders of the universe with us.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InterestsPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Button background color
                      foregroundColor: Colors.blue, // Button text color
                    ),
                    child: Text('Let\'s Get Started'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
