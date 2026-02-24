import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart'; // This is the file we created earlier
import 'auth_wrapper.dart'; // We'll create this next

void main() async {
  // Ensure Flutter is initialized before async operations
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase – THIS MUST HAPPEN BEFORE runApp()
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authenticated User Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AuthWrapper(), // We'll build this next
    );
  }
}
