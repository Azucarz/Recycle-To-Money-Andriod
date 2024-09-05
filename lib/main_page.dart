import 'package:flutter/material.dart';
import 'login_page.dart'; // Import halaman login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Waste',
      theme: ThemeData(
        primarySwatch: Colors.green,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green,
          secondary: Colors.greenAccent,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/image2/bg.jpg',
            fit: BoxFit.cover,
          ),
          // Overlay content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Logo image
                Image.asset(
                  'assets/image1/rc.jpg',
                  width: 100, // Sesuaikan ukuran logo
                  height: 100,
                ),
                const SizedBox(height: 20), // Jarak antara logo dan teks
                // Text
                const Text(
                  'Smart Waste',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green, // Warna teks
                  ),
                ),
                const SizedBox(height: 40), // Jarak antara teks dan tombol
                SizedBox(
                  width: 200, // Lebar tombol
                  height: 60, // Tinggi tombol
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke LoginPage saat tombol USER ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20), // Ukuran font
                    ),
                    child: const Text('USER'),
                  ),
                ),
                const SizedBox(height: 20), // Jarak antar tombol
                SizedBox(
                  width: 200, // Lebar tombol
                  height: 60, // Tinggi tombol
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke LoginPage saat tombol WORKER ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20), // Ukuran font
                    ),
                    child: const Text('WORKER'),
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
