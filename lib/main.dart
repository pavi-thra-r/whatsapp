import 'package:flutter/material.dart';
import 'home_screen.dart'; // Adjust path if needed

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});  // const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121B22),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00A884),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121B22),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
