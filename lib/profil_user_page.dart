import 'package:flutter/material.dart';
import 'package:smart_waste/login_page.dart';
import 'f_request.dart';  // Import halaman f_request.dart

void main() {
  runApp(SmartWasteApp());
}

class SmartWasteApp extends StatelessWidget {
  const SmartWasteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Waste',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.green[50],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar nama menu
    final List<String> menuNames = [
      'Request',
      'Status',
      'Wallet',
      'Statistics',
      'Help',
      'Logout',
    ];
    

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/image2/bg.jpg',
              fit: BoxFit.cover, // Menyesuaikan background agar memenuhi layar
            ),
          ),
          // Content di tengah
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo di atas
                Image.asset(
                  'assets/image1/rc.jpg',
                  width: 120,  // Sesuaikan ukuran logo
                  height: 120,
                ),
                const SizedBox(height: 16), // Jarak antara logo dan tulisan
                // Tulisan "Smart Waste"
                Text(
                  'Smart Waste',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],  // Warna teks hijau
                  ),
                ),
                const SizedBox(height: 32), // Jarak antara teks dan grid
                // Grid Menu
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    shrinkWrap: true,  // Agar GridView bisa digabung dengan elemen lain
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1,
                    ),
                    itemCount: menuNames.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.green[100],
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: InkWell(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RequestPickupPage(),
                                ),
                              );
                            }
                            if (index == 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                  
                                ),
                                
                              );
                              debugPrint('Clear Cache');
                              debugPrint('Clear Temporary Memory');
                              debugPrint('Successful Logout');
                            }
                            // Tambahkan logika untuk menu lainnya jika perlu
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.eco,
                                size: 48,
                                color: Colors.green[700],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                menuNames[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
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
