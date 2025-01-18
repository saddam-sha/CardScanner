import 'package:cardscanner/model/carddetails.dart';
import 'package:flutter/material.dart';

class Carddetailspage extends StatelessWidget {
  final Carddetails details;
  const Carddetailspage({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    // final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6200EE),
        title: const Text(
          "CardScanner",
          style: TextStyle(
              color: Color.fromARGB(255, 112, 108, 108), fontSize: 24),
        ),
        actions: const [
          Icon(
            Icons.share,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: screenheight / 4,
            color: Colors.amber,
            child: Image.asset(
              details.image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //1
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            details.name,
                            style: const TextStyle(
                                color: Color(0xFF6200EE), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  //2
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Position",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            details.posintion,
                            style: const TextStyle(
                                color: Color(0xFF6200EE), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  //3
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Company Name ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            details.companyName,
                            style: const TextStyle(
                                color: Color(0xFF6200EE), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  //4
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Number",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            details.number,
                            style: const TextStyle(
                                color: Color(0xFF6200EE), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  //5
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            details.email,
                            style: const TextStyle(
                                color: Color(0xFF6200EE), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  //6
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Website",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            details.website,
                            style: const TextStyle(
                                color: Color(0xFF6200EE), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  //7
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        border: BorderDirectional(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Addrese",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            details.address,
                            style: const TextStyle(
                                color: Color(0xFF6200EE), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Social Profile",
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/Home/ic_facebook.png")),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Follow my company",
                          style: TextStyle(color: Color(0xFF6200EE)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
