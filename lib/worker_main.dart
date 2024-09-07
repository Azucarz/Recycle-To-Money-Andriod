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
          Positioned.fill(
            child: Image.asset(
              'assets/image2/bg.jpg',
              fit: BoxFit.cover, // Menyesuaikan background agar memenuhi layar
            ),
          ),
          Center(     // Content di tengah
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
        
                Image.asset(  // Logo di atas
                  'assets/image1/rc.jpg',
                  height: 120,
                  width: 120,  // Sesuaikan ukuran logo
                 
                ),
                const SizedBox(height: 16), // Jarak antara logo dan tulisan
                Image.asset(
                'assets/Mps.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,  // Menyesuaikan gambar agar memenuhi kontainer
                ),
                const SizedBox(height: 16),
                // Tulisan "Trash Tp Cash"
                Text(
                  'Trash To Cash',
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
                    shrinkWrap: true,  
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
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
                                              'OK'); // will clse the dialog
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  f_job_status(),
                                            ),
                                          ); // will go to TaskStatusPage
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
                              debugPrint('Clear Cache'); //debug
                              debugPrint('Clear Temporary Memory');//debug
                              debugPrint('Successful Logout'); //debug
                            }
                              if (index == 1) {
                              // Navigasi ke halaman binpage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => f_job_status(),
                                ),
                              );
                              }

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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
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
