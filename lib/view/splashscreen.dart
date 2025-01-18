import 'dart:async';

import 'package:cardscanner/view/login.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Splashscreen/Rectangle.png"),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  width: screenwidth * 0.4,
                  height: screenheight * 0.15,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/Splashscreen/Logo_CardScanner.png"))),
                ),
                Container(
                  width: screenwidth * 0.5,
                  height: screenheight * 0.5,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Splashscreen/Vector.png"),
                          // fit: BoxFit.contain,
                          alignment: Alignment.topCenter)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: screenheight / 2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/Splashscreen/Combined Shape.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: screenheight * 0.14,
                      width: screenwidth * 0.14,
                      child: Image.asset("assets/Splashscreen/ic_camera.png")),
                  SizedBox(
                    height: screenheight * 0.05,
                  ),
                  const Text(
                    "Scane and read business cards\n    whith heigh accuracy",
                    style: TextStyle(color: Color(0xFF6200EE), fontSize: 18),
                  ),
                  SizedBox(
                    height: screenheight * 0.05,
                  ),
                  Container(
                      width: screenwidth * 0.8,
                      height: screenheight * 0.06,
                      decoration: BoxDecoration(
                          color: const Color(0xFF6200EE),
                          borderRadius: BorderRadius.circular(14)),
                      child: const Center(
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
