import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    // final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/splash_pic.jpg',
            fit: BoxFit.cover,
            height: height * .7,
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Text(
            'Pocket News',
            style: GoogleFonts.anton(
                color: Colors.grey.shade700, letterSpacing: 0.6, fontSize: 35),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          const SpinKitChasingDots(
            color: Colors.blue,
            size: 45,
          )
        ],
      ),
    );
  }
}
