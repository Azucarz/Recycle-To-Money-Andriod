import 'package:flutter/material.dart';

void main() {
  runApp(f_wallet());
}

class f_wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green, // Tema hijau
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green, // Warna tombol
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green, // Warna AppBar
        ),
      ),
      home: f_walletWP(),
    );
  }
}

class  f_walletWP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Wallet'),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          
          Positioned.fill(
            child: Image.asset(
              'assets/image2/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
        
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
            
                Image.asset(
                  'assets/image1/rc.jpg',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Trash To Cash',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Warna teks
                  ),
                ),
                SizedBox(height: 16.0),
                // Row untuk gambar koin dan jumlah koin
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Gambar koin
                    Image.asset(
                      'assets/image8.png', // Ganti dengan path gambar koin Anda
                      width: 50,
                      height: 50,
                    ),
                    // Jumlah koin
                    Text(
                      '10 Coins', // Ganti dengan jumlah koin sesuai kebutuhan
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Warna teks
                      ),
                    ),
                  ],
                ),
                Spacer(),
                // Tombol Withdraw
                Center(
                  child: SizedBox(
                    width: double.infinity, // Tombol memenuhi lebar layar
                    child: ElevatedButton(
                      onPressed: () {
                        // Aksi tombol Withdraw
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Withdraw button pressed')),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Warna tombol
                        padding: EdgeInsets.symmetric(vertical: 20.0), // Padding yang lebih tinggi
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Membuat tombol berbentuk persegi panjang
                        ),
                      ),
                      child: Text('Withdraw'),
                    ),
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
