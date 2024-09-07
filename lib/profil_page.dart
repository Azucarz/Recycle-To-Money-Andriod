import 'package:flutter/material.dart';
void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green[800],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/image2/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Image1/rc.jpg',// Logo di atas
                  width: 120,
                  height: 120,
                ),
                const SizedBox(height: 16), // Jarak antara logo dan tulisan
                Text(
                  'Your Profile',// Tulisan profil
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],
                  ),
                ),
                const SizedBox(height: 16), // Jarak antara teks dan detail profil
                Card(
                  color: Colors.green[100],
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Name: 0001',//call dari api 
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green[800],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Email: customer@gmail.com',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green[800],
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[700],
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);// Logika logout atau kembali ke halaman login
                          },
                          child: const Text(
                            'Logout',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
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
