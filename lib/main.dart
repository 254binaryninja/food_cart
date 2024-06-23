// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_cart/auth/Login_or_Register.dart';
import 'package:food_cart/loading.dart';
import 'package:food_cart/model/restaurant.dart';
import 'package:food_cart/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      // theme provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      //restaurant Provider
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
