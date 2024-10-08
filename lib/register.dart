import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController unameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController psswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image2/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Konten di atas background
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center( // Logo di atas tulisan "Trash To Cash"
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image1/rc.jpg',
                        height: 100.0, // Sesuaikan ukuran logo
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Trash To Cash',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.0),
                TextField(
                  controller: unameController,
                  decoration: InputDecoration(
                    labelText: 'Your Name',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: psswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 32.0),

                ElevatedButton(
                  onPressed: () {// Tombol Create Account
                    String uname = unameController.text;// Fungsi yang akan dijalankan saat tombol ditekan
                    String email = emailController.text;
                    String password = psswordController.text;
                    print('User Name: $uname, Email: $email, Password: $password');

                    
                  },
                  child: Text('Create Account'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Warna hijau GoGreen
                    padding: EdgeInsets.symmetric(vertical: 16.0),
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

void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
    theme: ThemeData(
      primaryColor: Colors.green,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.green,
        secondary: Colors.greenAccent, // Gantikan accentColor dengan secondary
      ),
    ),
  ));
}
