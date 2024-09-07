import 'package:flutter/material.dart';
import 'f_request.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green, // Tema hijau
      ),
      home: CustomGridPage(),
    );
  }
}

class CustomGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trash To Cash'),
        centerTitle: true,
        backgroundColor: Colors.green, // Warna AppBar
      ),
      body: Stack(
        fit: StackFit.expand,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/image1/rc.jpg',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 16.0),
                // Title
                Text(
                  'Trash To Cash',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Warna teks
                  ),
                ),
                SizedBox(height: 16.0),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 kolom
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/image${index + 3}.jpg'), // Ganti dengan path gambar sesuai index
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            ElevatedButton(
                              onPressed: () {
                                // Arahkan ke halaman f_request.dart
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RequestPickupPage(), // Ganti dengan nama kelas dari f_request.dart
                                  ),
                                );
                              },
                              child: Text('Trash ${index + 1}'),
                            ),
                          ],
                        ),
                      );
                    },
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
