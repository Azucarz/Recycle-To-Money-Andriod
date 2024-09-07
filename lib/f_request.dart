import 'package:flutter/material.dart';

void main() {
  runApp(f_request());
}

class f_request extends StatelessWidget {
  const f_request({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Request Pickup',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: f_requestRPP(),
    );
  }
}

class f_requestRPP extends StatelessWidget {
  const f_requestRPP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Pickup'),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image2/bg.jpg', // bg 
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      width: 50,
                      'assets/image1/rc.jpg', //tempaat logo
                      height: 50,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Request Pickup',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Image.asset(
                'assets/Hms.jpg', //foto rumah
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,  
                ),
                const SizedBox(height: 16),
                const Text(
                  'Logitude: 13.7563', //keterangan logitude
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  style: TextStyle(fontSize: 16),
                  'Latitude: 100.5018', //keterangan latitude
                ),
              ],
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1, // Jarak dari bawah 
            left: 60,
            right: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //future enhancement. 
                    //Self reminder learn how to integrate button animation,tried to do the slide feature but didnt work,youtube videos didnt help , post on stackoverflow and try to ask.
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Warna tombol batal
                  ),
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // future enhancement 
                  },
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Warna tombol pickup
                  ),
                  child: Text('Pickuup'),//add the feature where it will send to the database later
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
