import 'package:cardscanner/model/catagorymodel.dart';
import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  const Catagory({super.key});

  @override
  Widget build(BuildContext context) {
    List<Catagorymodel> ofctagory = [
      Catagorymodel(
          catagoryname: "Family", catagorytext: "F", colors: Colors.red),
      Catagorymodel(
          catagoryname: "Friends", catagorytext: "Fr", colors: Colors.green),
      Catagorymodel(
          catagoryname: "Business", catagorytext: "B", colors: Colors.blue),
      Catagorymodel(
          catagoryname: "Social", catagorytext: "S", colors: Colors.yellow)
    ];

    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Home/Top Banner.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
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
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: screenheight * 0.24,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 15),
                  children: [
                    for (int i = 0; i < ofctagory.length; i++) ...[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: screenwidth * 0.42,
                            height: screenheight * 0.28,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 8,
                                    spreadRadius: 1,
                                    offset: const Offset(4, 4),
                                  )
                                ]),
                            child: Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: screenwidth * 0.4,
                                          height: 5,
                                          alignment: Alignment.topCenter,
                                          decoration: BoxDecoration(
                                            color: ofctagory[i].colors,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20)),
                                          )),

                                      //box imageand three dots
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 20, right: 3),
                                            child: Container(
                                              width: screenwidth * 0.3,
                                              height: screenheight * 0.14,
                                              decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 216, 207, 207),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(
                                                child: Text(
                                                  ofctagory[i].catagorytext,
                                                  style: TextStyle(
                                                      color:
                                                          ofctagory[i].colors,
                                                      fontSize: 34,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: PopupMenuButton<int>(
                                              onSelected: (int value) {
                                                // Handle menu item selection
                                              },
                                              itemBuilder:
                                                  (BuildContext context) =>
                                                      <PopupMenuEntry<int>>[
                                                const PopupMenuItem<int>(
                                                  value: 1,
                                                  child: Text('Add Catagory'),
                                                ),
                                                const PopupMenuItem<int>(
                                                  value: 2,
                                                  child:
                                                      Text('Move to Catagory '),
                                                ),
                                                const PopupMenuItem<int>(
                                                  value: 2,
                                                  child: Text(
                                                      'Remove from Catagory '),
                                                ),
                                                const PopupMenuItem<int>(
                                                  value: 2,
                                                  child: Text('Sort '),
                                                ),
                                                const PopupMenuItem<int>(
                                                  value: 2,
                                                  child: Text('Delete'),
                                                ),
                                              ],
                                              child: SizedBox(
                                                height: screenheight * 0.15,
                                                width: screenwidth * 0.032,
                                                child: Image.asset(
                                                  "assets/Home/ic_more.png",
                                                  alignment: Alignment.topRight,
                                                  //fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        ofctagory[i].catagoryname,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "1 Cradit",
                                        style:
                                            TextStyle(color: Colors.grey[400]),
                                      )
                                    ]),
                              ),
                            )),
                      )
                    ]
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
