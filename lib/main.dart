import 'package:flutter/material.dart';
import 'package:usuarios_flutter/screen_views/inicio.dart';
import 'package:usuarios_flutter/screen_views/login.dart';
import 'package:usuarios_flutter/screen_views/usuarios.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login()
    );
  }
}