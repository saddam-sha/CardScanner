import 'package:cardscanner/model/profilemodel.dart';
import 'package:cardscanner/view/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Profilemodel> profileiterm = [
      Profilemodel(
          image: "assets/profile/ic_notification.png",
          name: "Notification",
          onTap: () {}),
      Profilemodel(
          image: "assets/profile/ic_terms.png",
          name: "Terms & Condition",
          onTap: () {}),
      Profilemodel(
          image: "assets/profile/ic_changepassword.png",
          name: "Change Password",
          onTap: () {}),
      Profilemodel(
          image: "assets/profile/ic_rate us.png",
          name: "Rate Us",
          onTap: () {}),
      Profilemodel(
          image: "assets/profile/ic_delete.png",
          name: "Delete Account",
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: AlertDialog(
                      title: const Text(
                          "Are you sure you wont to delete account? "),
                      actions: [
                        TextButton(
                            onPressed: () async {
                              final pref =
                                  await SharedPreferences.getInstance();
                              pref.remove("email");
                              pref.remove("password");
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text(
                              "YES",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "NO",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  );
                });
          }),
      Profilemodel(
          image: "assets/profile/ic_logout.png", name: "Logout", onTap: () {}),
    ];
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Home/Top Banner.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter)),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      "CardScanner",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: screenheight * 0.03,
            // ),
            Expanded(
              child: ListView.builder(
                  itemCount: profileiterm.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: GestureDetector(
                            onTap: () {
                              profileiterm[i].onTap();
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: BorderDirectional(
                                      bottom:
                                          BorderSide(color: Colors.black12))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: Image.asset(
                                            profileiterm[i].image,
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      profileiterm[i].name,
                                      style: const TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            )
          ])),
    );
  }
}
