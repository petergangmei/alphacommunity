import 'dart:async';

import 'package:alphacommunity/blocs/homedata_bloc/homedata_bloc.dart';
import 'package:alphacommunity/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => HomedataBloc(),
          child: const HomeScreen(),
        ),
      ));
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Splah Screen"),));
  }
}