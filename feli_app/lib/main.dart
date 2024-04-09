import 'package:feli_app/pages/homepage.dart';
import 'package:feli_app/pages/logo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FeliApp());
}

class FeliApp extends StatefulWidget {
  const FeliApp({super.key});

  @override
  State<FeliApp> createState() => _FeliAppState();
}

class _FeliAppState extends State<FeliApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FeliApp',
      theme: ThemeData(
      ),
      home: const LogoScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/logo_screen',
      routes: {
        '/homepage': (context) => const MyhomePage(),
      //  '/login': (context) => const LoginScreen(),
       // '/register': (context) => const RegisterScreen(),
       '/logo_screen': (context) => const LogoScreen(),
      },
    );
  }
}