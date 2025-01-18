import 'package:cardscanner/model/carddetails.dart';
import 'package:cardscanner/view/carddetailspage.dart';
import 'package:flutter/material.dart';

class Favratepage extends StatelessWidget {
  const Favratepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Carddetails> carddetails = [
      Carddetails(
          address: "xyz,manipur mumbai 11",
          name: " Saddam Shaikh",
          posintion: "sofware devaloper",
          companyName: "xyz solution",
          number: "+0000000",
          email: "abc@gmail.com",
          image: "assets/Home/Card image.png",
          website: "www.abc.com"),
      Carddetails(
          address: "xyz,manipur mumbai 11",
          name: " Saddam Shaikh",
          posintion: "sofware devaloper",
          companyName: "xyz solution",
          number: "+0000000",
          email: "abc@gmail.com",
          image: "assets/Home/Visiting Card.png",
          website: "www.abc.com"),
      Carddetails(
          address: "xyz,manipur mumbai 11",
          name: " Saddam Shaikh",
          posintion: "sofware devaloper",
          companyName: "xyz solution",
          number: "+0000000",
          email: "abc@gmail.com",
          image: "assets/Home/Card image.png",
          website: "www.abc.com")
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
                  for (int i = 0; i < carddetails.length; i++) ...[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Carddetailspage(
                                      details: carddetails[i],
                                    )));
                      },
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    //box imageand three dots
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16, top: 5, right: 3),
                                          child: Container(
                                            width: screenwidth * 0.3,
                                            height: screenheight * 0.09,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Image.asset(
                                              carddetails[i].image,
                                              fit: BoxFit.cover,
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
                                              height: screenheight * 0.09,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                              "Name:${carddetails[i].name}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                              "Position:${carddetails[i].posintion}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                              carddetails[i].companyName,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: screenwidth * 0.1,
                                                height: screenheight * 0.05,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/Home/ic_edit.png"),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: screenwidth * 0.1,
                                                height: screenheight * 0.05,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/Home/ic_fav_red.png"),
                                                        fit: BoxFit.cover)),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: screenwidth * 0.1,
                                                height: screenheight * 0.05,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/Home/ic_share.png"),
                                                        fit: BoxFit.cover)),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
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
    ));
  }
}
