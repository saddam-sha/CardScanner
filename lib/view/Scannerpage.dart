import 'package:cardscanner/view/verifydetails.dart';
import 'package:flutter/material.dart';

class Scannerpage extends StatelessWidget {
  const Scannerpage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan"),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Verifydetails()));
        },
        child: Container(
          width: double.infinity,
          height: screenheight * 0.06,
          color: const Color(0xFF6200EE),
          child: const Center(
            child: Text(
              "NEXT",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/scanner/ic_scan.png"))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/scanner/qrscanner.png"),
                ),
              ),
              SizedBox(
                height: screenheight / 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Create Your Card",
                        style: TextStyle(
                            color: Color(0xFF6200EE),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      //alignment: Alignment.topCenter,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          border: BorderDirectional(
                              bottom: BorderSide(color: Color(0xFF6200EE)))),
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text(
                          "Email Id",
                          style: TextStyle(color: Colors.grey),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
