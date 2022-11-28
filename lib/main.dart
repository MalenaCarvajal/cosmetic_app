import 'package:flutter/material.dart';

import 'homepage.dart';
import 'login.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      initialRoute: '/login',
      routes: {
        "/": (context) => const HomePage(),
        "/login": (context) => const Login(),
      }, 
    );
  }
}