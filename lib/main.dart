import 'package:assignment_2/splashScreen_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 2',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF263238)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


