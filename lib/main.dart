import 'package:flutter/material.dart';
import 'package:language_app/layout/home_screen.dart';

void main() {
  runApp(const LanguageApp());
}

class LanguageApp extends StatefulWidget {
  const LanguageApp({Key? key}) : super(key: key);

  @override
  State<LanguageApp> createState() => _LanguageAppState();
}

class _LanguageAppState extends State<LanguageApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:HomeScreen(),
    );
  }
}

