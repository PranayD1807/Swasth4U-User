import 'package:demo/screens/need_help_screen.dart';
import 'package:demo/screens/tab_screen.dart';
import 'package:demo/widgets/card.dart';
import 'package:flutter/material.dart';

class SelectCardScreen extends StatefulWidget {
  const SelectCardScreen({Key? key, this.fromTabScreen = false})
      : super(key: key);
  final bool fromTabScreen;

  @override
  State<SelectCardScreen> createState() => _SelectCardScreenState();
}

class _SelectCardScreenState extends State<SelectCardScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: widget.fromTabScreen
          ? null
          : AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.keyboard_arrow_left_outlined),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Colors.blue,
            ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              if (!widget.fromTabScreen)
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              SizedBox(
                height: widget.fromTabScreen ? 20 : 50,
                width: double.maxFinite,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Select your SWASTH4U Card",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(54, 105, 166, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
                // width: double.maxFinite,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "You can only select one card at a time.",
                  // textScaleFactor: 1.5,
                  style: TextStyle(
                    // fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(54, 105, 166, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
                width: double.maxFinite,
              ),
              Container(
                constraints: const BoxConstraints(),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    bool isSelected = _currentIndex == i;
                    return Row(
                      children: <Widget>[
                        MyCard(
                            cardWidth: MediaQuery.of(context).size.width * 0.7),
                        Checkbox(
                            value: isSelected,
                            side: const BorderSide(
                                color: Colors.lightBlue, width: 2),
                            shape: const CircleBorder(),
                            onChanged: (val) {
                              setState(() {
                                _currentIndex = i;
                              });
                            })
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
                // width: double.maxFinite,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: TextButton(
                  onPressed: () {
                    // sendOTP();
                    if (widget.fromTabScreen) {
                      return;
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const TabsScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 175, 239, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(double.maxFinite, 30),
                    // tapTargetSize: MaterialTapTargetSize.padded,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                  ),
                  child: Text(
                    widget.fromTabScreen ? "Confirm" : "Next",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const NeedHelpScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Need Help?",
                  style: TextStyle(
                      color: Color.fromRGBO(102, 101, 101, 1),
                      fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
