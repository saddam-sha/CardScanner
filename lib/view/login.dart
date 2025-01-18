import 'package:cardscanner/view/bottomnave.dart';
import 'package:cardscanner/view/forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  writedata() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("email", emailcontroller.text);
    pref.setString("password", passwordcontroller.text);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Bottomnave()));

    setState(() {});
  }

  getedata() async {
    final pref = await SharedPreferences.getInstance();
    emailcontroller.text = pref.getString("email") ?? "";
    passwordcontroller.text = pref.getString("password") ?? "";
    if (passwordcontroller.text.isNotEmpty && emailcontroller.text.isNotEmpty) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Bottomnave()));
    }

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getedata();
  }

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Color(0xFF6200EE),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/Login/Vector.png"),
                  alignment: Alignment.topCenter,
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Color(0xFF6200EE)))),
                child: TextField(
                  controller: emailcontroller,
                  decoration: const InputDecoration(
                      label: Text(
                    "Email",
                    style: TextStyle(color: Colors.grey),
                  )),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Color(0xFF6200EE)))),
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      label: Text(
                        "Password",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: true, onChanged: (bool? newValue) {}),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      child: const Text("Remember Me"),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Forgotpassword()));
                      },
                      child: Container(
                        //width: double.infinity,
                        alignment: Alignment.topRight,
                        //width: double.infinity,
                        child: const Text("Forgot Password?"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (emailcontroller.text == "saddam@gmail.com" &&
                          passwordcontroller.text == "123456") {
                        writedata();
                      }
                    },
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
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "OR CONNECT WITH",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 123, 117, 117)),
              ),
              Row(
                children: [
                  Container(
                    height: screenheight * 0.05,
                    width: screenwidth * 0.35,
                    decoration: BoxDecoration(
                        color: const Color(0xFF3F5893),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: screenheight * 0.05,
                    width: screenwidth * 0.35,
                    decoration: BoxDecoration(
                        color: const Color(0xFFDB4639),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "GOOGLE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "SignIn With Us",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Term and Condition",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
