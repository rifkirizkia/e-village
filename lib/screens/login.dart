import 'dart:async';

import 'package:e_village/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/r.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ));
    });
    return Scaffold(
      body: Container(
        color: R.colors.secondary,
        child: Center(
          child: Image.asset(R.assets.logo),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showInputField = false;
  double adaptiveSize = 0;
  final nikController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.secondary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).viewPadding.top),
                height:
                    MediaQuery.of(context).size.height * (0.5 - adaptiveSize),
                width: double.infinity,
                child: Column(
                  children: [
                    if (!showInputField)
                      SvgPicture.asset(
                        R.assets.logo,
                        height: 100,
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Image.asset(
                        R.assets.smart_city,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              child: Container(
                height:
                    MediaQuery.of(context).size.height * (0.5 + adaptiveSize),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        "Selamat Datang di E-Village",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Masuk dengan akun anda",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      showInputField
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                const Text("NIK"),
                                TextField(
                                  controller: nikController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')),
                                  ],
                                  decoration: InputDecoration(
                                    hintText: "3812323xxxxxx",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                SizedBox(
                                  height: 45,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      // primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      print(nikController.text);
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: ((context) => HomeLayout()),
                                        ),
                                      );
                                      setState(() {});
                                    },
                                    child: const Text(
                                      "MASUK",
                                      style: TextStyle(
                                        fontSize: 16,
                                        // color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                SizedBox(
                                  height: 45,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      showInputField = true;
                                      adaptiveSize = 0.1;
                                      setState(() {});
                                    },
                                    child: const Text(
                                      "Masukan NIK anda",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
