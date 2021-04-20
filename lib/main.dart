import 'package:flutter/material.dart';
import 'package:food_afrik/pages/Home.dart';
import 'package:food_afrik/pages/Login.dart';
import 'package:food_afrik/pages/Register.dart';

void main(List<String> args) => runApp(FoodAfrik());

class FoodAfrik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => Login(),
        '/register': (context) => Register()
      },
    );
  }
}
