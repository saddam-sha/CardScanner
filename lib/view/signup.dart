import 'package:cardscanner/view/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Color(0xFF6200EE),
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 280,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/Signin/Vector.png"),
                    alignment: Alignment.topCenter,
                  )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Color(0xFF6200EE)))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text(
                      "Full Name",
                      style: TextStyle(
                          color: Color.fromARGB(255, 87, 84, 84), fontSize: 18),
                      textAlign: TextAlign.end,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Color(0xFF6200EE)))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text(
                      "Email",
                      style: TextStyle(
                          color: Color.fromARGB(255, 87, 84, 84), fontSize: 18),
                      textAlign: TextAlign.end,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Color(0xFF6200EE)))),
                  child: TextFormField(
                    validator: (value) {
                      return null;
                    },
                    decoration: const InputDecoration(
                        label: Text(
                      "Password",
                      style: TextStyle(
                          color: Color.fromARGB(255, 87, 84, 84), fontSize: 18),
                      textAlign: TextAlign.end,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Color(0xFF6200EE)))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text(
                      "Confirm Password",
                      style: TextStyle(
                          color: Color.fromARGB(255, 87, 84, 84), fontSize: 18),
                      textAlign: TextAlign.end,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                          borderRadius:
                              BorderRadius.circular(8), // Rounded corners
                        )),
                      ),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    "Already Have An Account",
                    style: TextStyle(
                        color: Color(0xFF6200EE),
                        fontSize: 22,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
