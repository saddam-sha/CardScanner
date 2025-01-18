import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "FORGOT PASSWORD",
                  style: TextStyle(
                      color: Color(0xFF6200EE),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Forgotpassword/Vector.png"))),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Color(0xFF6200EE)))),
                child: const TextField(
                  decoration: InputDecoration(
                      label: Text(
                    "Email",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      const Color(0xFF6200EE),
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    )),
                  ),
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
