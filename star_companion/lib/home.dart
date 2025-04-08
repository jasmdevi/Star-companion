import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nightSkyMapUrl = 'https://example.com/night-sky-map'; // Replace with actual map URL

  void _refreshMap() {
    setState(() {
      // Logic to refresh the map (e.g., update the URL or reload the map)
      nightSkyMapUrl = 'https://example.com/night-sky-map?timestamp=${DateTime.now().millisecondsSinceEpoch}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Astronomy App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.network(
                nightSkyMapUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Text('Failed to load map');
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _refreshMap,
              child: Text('Refresh Map'),
            ),
          ),
        ],
      ),
    );
  }
}
