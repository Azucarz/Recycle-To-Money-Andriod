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
      home: StatusPage(),
    );
  }
}

class StatusPage extends StatelessWidget {
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
                          StatusBox(date: '01/09/2024', status: 'Collected Paid', isFullWidth: true),
                          StatusBox(date: '02/09/2024', status: 'Collected Paid', isFullWidth: true),
                          StatusBox(date: '03/09/2024', status: 'Collected Paid', isFullWidth: true),
                        ],
                      ),
                      SizedBox(height: 20),
                      StatusBox(date: '04/09/2024', status: 'Processing', isFullWidth: true),
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

class StatusBox extends StatelessWidget {
  final String date;
  final String status;
  final bool isFullWidth;

  StatusBox({required this.date, required this.status, this.isFullWidth = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Full width for all StatusBox
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0), // Add margin for spacing between boxes
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Spacer(), // Adds space between date and status
          Text(
            status,
            style: TextStyle(
              fontSize: 14,
              color: status == 'Processing' ? Colors.orange : Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
