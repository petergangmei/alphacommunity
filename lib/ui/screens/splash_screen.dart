import 'dart:async';

import 'package:alphacommunity/data/respository.dart';
import 'package:alphacommunity/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:alphacommunity/global.dart' as global;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getInitValue();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) =>  RepositoryProvider(
          create: (context) => MainRepository(),
          child: const HomeScreen(),
        ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Splah Screen"),
    ));
  }
}

getInitValue() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  global.tokenValue = prefs.getString("tokenValue")!;
  global.firstStart = prefs.getBool('firstStart')!;
  
    // prefs.setString("tokenValue", data["response"]['token']);
}
