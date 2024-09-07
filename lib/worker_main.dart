import 'package:flutter/material.dart';
import 'package:smart_waste/login_page.dart';
import 'profil_user_page.dart';
import 'f_job_status.dart';


void main() {
  runApp(SmartWorkerWasteApp());
}


class SmartWorkerWasteApp extends StatelessWidget {
  const SmartWorkerWasteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Waste',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.green[50],
      ),
      home: HomeWorkerPage(),
    );
  }
}

class HomeWorkerPage extends StatelessWidget {
  const HomeWorkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar nama menu
    final List<String> menuNames = [
      'Accept Job',
      'Job Status',
      'Wallet',
      'Feedbacks',
      'Be Customer',
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
                Image.asset(
                'assets/Mps.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,  // Menyesuaikan gambar agar memenuhi kontainer
                ),
                const SizedBox(height: 16),
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
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Accept Job Now'),
                                    content:
                                        const Text('The Number of Houses Today Will Be : 4'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context,
                                              'OK'); // Close the dialog
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  TaskStatusPage(),
                                            ),
                                          ); // Navigate to TaskStatusPage
                                        },
                                        child: const Text('OK'),
                                        
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                            if (index == 4) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SmartWasteApp(),
                                  
                                ),
                                
                              );
                              debugPrint('Clear Cache');
                              debugPrint('Clear Temporary Memory');
                              debugPrint('Successful Logout');
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
                              if (index == 1) {
                              // Navigasi ke halaman binpage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TaskStatusPage(),
                                ),
                              );
                              }

                            // Tambahkan logika untuk menu lainnya jika perlu
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.eco,
                                size: 18,
                                color: Colors.green[700],
                              ),
                              const SizedBox(height: 5),
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
