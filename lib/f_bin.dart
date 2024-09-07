import 'package:flutter/material.dart'; //import utama dart
import 'f_request.dart'; //buat manggil request.dart

void main() {
  runApp(f_bin()); 
}

class f_bin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green, // Tema hijau 
      ),
      home: f_binCGP(),
    );
  }
}

class f_binCGP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trash To Cash'),
        centerTitle: true,
        backgroundColor: Colors.green, // App Bar Color
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/image2/bg.jpg', //image 2 untuk backgorund
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image1/rc.jpg', //logo aplikasi
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Trash To Cash', //judul tim
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
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
                                    image: AssetImage('assets/image${index + 3}.jpg'), // pakai index biar ngirit
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push( //nafigasi 
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => f_requestRPP(), //nafigasi
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
