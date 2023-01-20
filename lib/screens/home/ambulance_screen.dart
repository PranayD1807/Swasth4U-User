import 'package:demo/screens/home/ambulance_previous_details_screen.dart';
import 'package:demo/widgets/custom_status_bar.dart';
import 'package:demo/widgets/my_tile.dart';
import 'package:demo/widgets/page_heading.dart';
import 'package:flutter/material.dart';

class AmbulanceScreen extends StatelessWidget {
  const AmbulanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        title: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(height: 35, child: Image.asset("assets/logo.png"))),
        // centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.keyboard_arrow_left_outlined),
        ),
      ),
      body: Column(
        children: <Widget>[
          const PageHeading(
            text: "Ambulance",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // height: 500,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(
                        top: 5, right: 10, left: 10, bottom: 5),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color.fromRGBO(17, 136, 222, 1),
                        ),
                        left: BorderSide(
                          color: Color.fromRGBO(17, 136, 222, 1),
                        ),
                        right: BorderSide(
                          color: Color.fromRGBO(17, 136, 222, 1),
                        ),
                        bottom: BorderSide(
                          color: Color.fromRGBO(17, 136, 222, 1),
                        ),
                      ),
                      color: Color.fromRGBO(236, 247, 255, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 5,
                                color: const Color.fromRGBO(0, 106, 183, 1),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.height * 0.18,
                            child: Image.asset(
                              "assets/person.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const MyTile(
                              text: "Ambulance Number", val: "BR01CB3540"),
                          const SizedBox(height: 10),
                          const MyTile(text: "Driver's Name", val: "XYZ KUMAR"),
                          const SizedBox(height: 10),
                          const MyTile(
                              text: "Phone Number", val: "98756 43210"),
                          const SizedBox(height: 10),
                          const MyTile(
                              text: "Panchayat", val: "XYZ, XYZ, XYZ & XYZ"),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(0, 106, 183, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                minimumSize: const Size(double.maxFinite, 30),
                                // tapTargetSize: MaterialTapTargetSize.padded,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                              ),
                              child: const Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 25),
                    child: const CustomStatusBar(
                      status: 0.5,
                      startingText: "Booked",
                      middleText: "Picked",
                      endText: "Dropped",
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                AmbulancePreviousDetailsScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 106, 183, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(double.maxFinite, 30),
                        // tapTargetSize: MaterialTapTargetSize.padded,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                      ),
                      child: const Text(
                        "View History",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
