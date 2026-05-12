import 'package:flutter/material.dart';
import 'package:shopizo/users/authentication/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopizo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.purple,
      ),
      home: LoginScreen()
    );
  }
}
