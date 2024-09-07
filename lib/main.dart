import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login_page.dart';

Future<void> main() async {
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Supabase
  await Supabase.initialize(
    url: 'https://eicuolgrlmpkywitfblr.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVpY3VvbGdybG1wa3l3aXRmYmxyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ3NzM0OTYsImV4cCI6MjA0MDM0OTQ5Nn0.e_fxtoz74yBNO1ircGFci2lIQ6dGeTNL02oTJhggx7U',
  );
 final client = Supabase.instance.client;
  final responseStream = client.from('User_Table').select().asStream();

  try {
    final response = await responseStream.toList();
    debugPrint('Connected successfully to Supabase!');
  } catch (e) {
    debugPrint('Error connecting to Supabase: $e');
  }

 
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       home: LoginPage(),
       
    );
  }
}
