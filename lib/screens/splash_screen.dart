import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constant/r.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  goToNextPage() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((context) => LoginPage()),
        ),
      );
    });
  }

  @override
  void initState() {
    //life cycle flutter
    super.initState();
    goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.secondary,
      body: GestureDetector(
        onTap: () {
          goToNextPage();
        },
        child: Center(
          child: SvgPicture.asset(R.assets.logo),
        ),
      ),
    );
  }
}
