import 'package:flutter/material.dart';
import 'package:smart_waste/profil_page.dart';
import 'f_bin.dart';  
import 'f_status.dart';   
import 'f_wallet.dart';
import 'package:smart_waste/login_page.dart';



void main() {
  runApp(SmartWasteApp());
}

class SmartWasteApp extends StatelessWidget {
  const SmartWasteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trash To Cash',
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
      'My Bin',
      'Status',
      'Wallet',
      'Statistics',
      'Profile',
      'Logout',
    ];
    

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/image2/bg.jpg',
              fit: BoxFit.cover, // Menyesuaikan background agar memenuhi layar
            ),
          ),
          Center( //tengah
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset( //logo
                  'assets/image1/rc.jpg',
                  width: 120,  // Sesuaikan ukuran logo
                  height: 120,
                ),
                const SizedBox(height: 16), // Jarak antara logo dan tulisan
                // Tulisan "Trash To Cash
                Text(
                  'Trash To Cash',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],  // Warna teks hijau
                  ),
                ),
                const SizedBox(height: 32), // Jarak antara teks dan grid
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    shrinkWrap: true,  // Agar GridView bisa digabung dengan elemen lain
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisSpacing: 16,
                      childAspectRatio: 1,
                      crossAxisCount: 3,
                      mainAxisSpacing: 16,
                      
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
                          onTap: () {// Logika navigasi untuk setiap menu
                            if (index == 0) {
                              Navigator.push(// Navigasi ke halaman binpage
                                context,
                                MaterialPageRoute(
                                  builder: (context) => f_bin(),
                                ),
                              );
                            } if (index == 1) {// Navigasi ke halaman StatusPag
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  f_status(),
                                ),
                              );
                            } if (index == 2) {
    
                              Navigator.push(// Navigasi ke halaman Wallet
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  f_wallet(),
                                ),
                              );
                            }
                            if (index == 4) {                              
                              Navigator.push(// Navigasi ke halaman Profil Pg
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  ProfilePage(),
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
                              
                              debugPrint('Clear Cache');//debugs
                              debugPrint('Clear Temporary Memory');//debugs
                              debugPrint('Successful Logout');//debugs
                            }
                            
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.eco,
                                color: Colors.green[700],
                                size: 48,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                menuNames[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[800],
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
