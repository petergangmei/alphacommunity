import 'package:alphacommunity/data/respository.dart';
import 'package:alphacommunity/ui/screens/home_screen.dart';
import 'package:alphacommunity/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alpha Community',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  RepositoryProvider(
        create: (context) => MainRepository(),
        child: const SplashScreen(),
      ),
    );
  }
}