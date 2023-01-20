import 'package:demo/ad_banner.dart';
import 'package:demo/screens/drawer.dart';
import 'package:demo/screens/home/card_usage.dart';
import 'package:demo/screens/home/home_screen.dart';
import 'package:demo/screens/notifications_screen.dart';
import 'package:demo/screens/pd_profile_screen.dart';

import 'package:demo/screens/share_screen.dart';
import 'package:demo/screens/select_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showGeneralDialog(
        context: context,
        barrierColor: Colors.black12.withOpacity(0.6), // Background color
        barrierDismissible: true,
        barrierLabel: 'Dialog',
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) {
          return const AdBannerScreen();
        },
      );
    });
  }

  int index = 2;

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int i) {
      setState(() {
        index = i;
      });
    }

    List<Widget> screens = [
      const ShareScreen(),
      CardUsageScreen(
        fromTabScreen: true,
      ),
      const HomeScreen(),
      const SelectCardScreen(
        fromTabScreen: true,
      ),
      // const SettingsScreen(),
      const PDProfileScreen(
        fromTabScreen: true,
      )
    ];
    List<BottomNavigationBarItem> items = [
      const BottomNavigationBarItem(icon: Icon(Icons.share), label: "Share"),
      const BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/notes.png")), label: "Notes"),
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.security), label: "security"),
      const BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/profile.png")), label: "profile"),
    ];
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        title: SizedBox(height: 30, child: Image.asset("assets/logo.png")),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const ImageIcon(
            AssetImage("assets/drawer.png"),
          ),
        ),
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 5),
              width: MediaQuery.of(context).size.width * 0.22,
              child: const FittedBox(
                child: Text(
                  "Valid - 288 Days",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 106, 183, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(0, 106, 183, 1),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        items: items,
        currentIndex: index,
        onTap: _onItemTapped,
      ),
      body: screens[index],
    );
  }
}
