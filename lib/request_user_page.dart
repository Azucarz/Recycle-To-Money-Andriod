import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Request Pickup',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RequestPickupPage(),
    );
  }
}

class RequestPickupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/image2/bg.jpg',
            fit: BoxFit.cover,
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with Logo and Title
                Row(
                  children: [
                    Image.asset(
                      'assets/Image1/rc.jpg',
                      width: 50, // Ukuran logo
                      height: 50,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Request Pickup',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Kotak foto rumah
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.green[200], // Warna latar belakang untuk kotak foto
                  child: Center(
                    child: Text('Foto Rumah', style: TextStyle(color: Colors.green[600])),
                  ),
                ),
                SizedBox(height: 16),
                // Keterangan alamat dan nomor rumah
                Text(
                  'Alamat: Jl. Contoh No. 123',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'Nomor Rumah: 123',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          // Tombol batal dan pickup, diposisikan lebih tinggi
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.4, // Jarak dari bawah 
            left: 60,
            right: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi tombol batal
                  },
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Warna tombol batal
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Aksi tombol pickup
                  },
                  child: Text('Pickup'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Warna tombol pickup
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
