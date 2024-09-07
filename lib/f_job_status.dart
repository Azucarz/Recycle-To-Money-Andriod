import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green,
          secondary: Colors.green[700]!,
        ),
        scaffoldBackgroundColor: Colors.green[50],
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.green[800],
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: TaskStatusPage(),
    );
  }
}

class TaskStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/image2/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo and Title
                Row(
                  children: [
                    Image.asset(
                      'assets/image1/rc.jpg',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Smart Waste',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ActionBox(
                            date: '01/09/2024',
                            address: '123 Green St, Green City',
                            coordinates: 'Lat: 40.7128, Long: -74.0060',
                            isFullWidth: true,
                          ),
                          ActionBox(
                            date: '02/09/2024',
                            address: '456 Eco Ave, Green City',
                            coordinates: 'Lat: 40.7306, Long: -73.9352',
                            isFullWidth: true,
                          ),
                          ActionBox(
                            date: '03/09/2024',
                            address: '789 Sustainable Blvd, Green City',
                            coordinates: 'Lat: 40.7410, Long: -73.9938',
                            isFullWidth: true,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ActionBox(
                        date: '04/09/2024',
                        address: '101 Greenway, Green City',
                        coordinates: 'Lat: 40.7488, Long: -73.9857',
                        isFullWidth: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActionBox extends StatelessWidget {
  final String date;
  final String address;
  final String coordinates;
  final bool isFullWidth;

  ActionBox({
    required this.date,
    required this.address,
    required this.coordinates,
    this.isFullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isFullWidth ? double.infinity : null, // Full width for ActionBox if specified
      padding: EdgeInsets.all(12.0), // Reduced padding
      margin: EdgeInsets.symmetric(vertical: 6.0), // Reduced margin
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 14, // Reduced font size
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(height: 6), // Reduced space between date and address
          Text(
            address,
            style: TextStyle(
              fontSize: 12, // Reduced font size
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 6), // Reduced space between address and coordinates
          Text(
            coordinates,
            style: TextStyle(
              fontSize: 12, // Reduced font size
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 12), // Reduced space between coordinates and button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Define action when button is pressed
                },
                child: Text('Done'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color of the button
                  foregroundColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
