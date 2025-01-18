import 'package:cardscanner/view/Scannerpage.dart';
import 'package:cardscanner/view/catagory.dart';
import 'package:cardscanner/view/favratepage.dart';
import 'package:cardscanner/view/homeeampal.dart';
import 'package:cardscanner/view/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Bottomnave extends StatefulWidget {
  const Bottomnave({super.key});

  @override
  State<Bottomnave> createState() => _BottomnaveState();
}

class _BottomnaveState extends State<Bottomnave> {
  final _controller = PersistentTabController(initialIndex: 0);
  List<Widget> _Tabscreen() {
    return [
      const Homeeampal(),
      const Catagory(),
      const Scannerpage(),
      const Favratepage(),
      const Profilepage()
    ];
  }

  List<PersistentBottomNavBarItem> _navitems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/Home/ic_home.png",
          width: 40,
          height: 40,
        ),
        // activeColorPrimary: Colors.yellowAccent,
      ),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            "assets/Home/ic_catagory.png",
            width: 40,
            height: 40,
          ),
          activeColorPrimary: const Color.fromARGB(255, 228, 206, 12)),
      PersistentBottomNavBarItem(
          onPressed: (c) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Scannerpage()));
          },
          icon: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          activeColorPrimary: const Color.fromARGB(255, 225, 208, 59)),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            "assets/Home/ic_fav_selected.png",
            color: Colors.white,
            width: 40,
            height: 40,
          ),
          activeColorPrimary: const Color.fromARGB(255, 228, 206, 12)),
      PersistentBottomNavBarItem(
          icon: Image.asset(
            "assets/Home/ic_profile.png",
            width: 40,
            height: 40,
          ),
          activeColorPrimary: const Color.fromARGB(255, 228, 206, 12)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _Tabscreen(),
      items: _navitems(),
      backgroundColor: const Color(0xFF6200EE),
      navBarStyle: NavBarStyle.style16,
    );
  }
}
