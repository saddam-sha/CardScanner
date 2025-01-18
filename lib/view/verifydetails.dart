import 'package:cardscanner/model/verifydetailsmodel.dart';
import 'package:flutter/material.dart';

class Verifydetails extends StatelessWidget {
  const Verifydetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<Verifydetailsmodel> detalsm = [
      Verifydetailsmodel(filldetails: "Full Name*"),
      Verifydetailsmodel(filldetails: "Position"),
      Verifydetailsmodel(filldetails: "Company Name"),
      Verifydetailsmodel(filldetails: "Mobile"),
      Verifydetailsmodel(filldetails: "Email"),
      Verifydetailsmodel(filldetails: "Website"),
      Verifydetailsmodel(filldetails: "Addrese")
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6200EE),
        title: const Text(
          "CardScanner",
          style: TextStyle(
              color: Color.fromARGB(255, 180, 176, 176), fontSize: 24),
        ),
        actions: const [
          Icon(
            Icons.share,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Please verify your details",
                  textAlign: TextAlign.left,
                )),
            Expanded(
              child: ListView.builder(
                  itemCount: detalsm.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              border: BorderDirectional(
                                  bottom:
                                      BorderSide(color: Color(0xFF6200EE)))),
                          child: TextField(
                            textAlign: TextAlign.end,
                            decoration: InputDecoration(
                                label: Text(
                              detalsm[i].filldetails,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            )),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
