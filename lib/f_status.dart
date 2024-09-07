import 'package:flutter/material.dart';

void main() {
  runApp(f_status());
}

class f_status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,primary: Colors.green,secondary: Colors.green[700]!,
        ),
        scaffoldBackgroundColor: Colors.green[50],
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,fontWeight: FontWeight.bold,color: Colors.green[900],
          ),
          bodyLarge: TextStyle(
            fontSize: 16,color: Colors.green[800],
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green,textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: f_statusP(),
    );
  }
}

class f_statusP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/image2/bg.jpg',fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/image1/rc.jpg',width: 50,height: 50,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Trash To Cash',
                      style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StatssBox(date: '01/09/2024', status: 'Collected Paid', isFulwidth: true),
                          StatssBox(date: '02/09/2024', status: 'Collected Paid', isFulwidth: true),
                          StatssBox(date: '03/09/2024', status: 'Collected Paid', isFulwidth: true),
                        ],
                      ),
                      SizedBox(height: 20),
                       StatssBox(date: '04/09/2024', status: 'Processing', isFulwidth: true),
                    ],
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

class StatssBox extends StatelessWidget {
  final String status;
  final String date;
  final bool isFulwidth;

  StatssBox({required this.date, required this.status, this.isFulwidth = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,padding: EdgeInsets.all(16.0),margin: EdgeInsets.symmetric(vertical: 8.0), // Size full for sstatuss
      decoration: BoxDecoration(
        color: Colors.white,borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),spreadRadius: 2,blurRadius: 5,offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(date,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary,
          ),
          ),

          Spacer(), // dia akan tambah spacernya

          Text(
            status,
            style: TextStyle(
              color: status == 'Processing' ? Colors.orange : Theme.of(context).colorScheme.primary,fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
