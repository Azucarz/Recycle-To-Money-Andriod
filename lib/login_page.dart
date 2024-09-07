import 'package:flutter/material.dart';
import 'register.dart';
import 'worker_main.dart';
import 'profil_user_page.dart';

void main() {
  runApp(const loginPge());
}

class loginPge extends StatelessWidget {
  const loginPge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trash To Cash Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image2/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/image1/rc.jpg',
                    height: 100,
                      width: 100,
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                       'Trash To Cash',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, 67, 230, 49),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40.0),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: 'Email ID',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Email ID';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20.0),
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your passwod';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 40.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: const Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                              ),
                              onPressed: () {
                                String emil = _emailController.text;
                                String password = _passwordController.text;


                                //Brackets backup if the api fails

                                if (emil == 'customer@gmail.com' &&
                                    password == 'customer') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SmartWasteApp()),
                                  );
                                  debugPrint("Customer logged in");
                                } else if (emil == 'worker@gmail.com' &&
                                    password == 'worker') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeWorkerPage()),
                                  );
                                  debugPrint("Worker logged in");
                                } else {
                                  debugPrint("Email or password incorrect");
                                }
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                           RegisterPage()),
                                );
                              },
                              child: const Text(
                                'Don\'t have an account? Register',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
