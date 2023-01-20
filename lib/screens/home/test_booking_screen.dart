import 'package:demo/widgets/custom_status_bar.dart';

import 'package:demo/widgets/page_heading.dart';
import 'package:flutter/material.dart';

class TestBookingScreen extends StatefulWidget {
  const TestBookingScreen({Key? key, required this.test}) : super(key: key);
  final String test;

  @override
  State<TestBookingScreen> createState() => _TestBookingScreenState();
}

class _TestBookingScreenState extends State<TestBookingScreen> {
  //  Initial Selected Value
  String dropdownvalue = 'Empty Stomach';

  // List of items in our dropdown menu
  final items = [
    'Empty Stomach',
    'Full Stomach Till Eternity AD AD WD AD WA ',
    'Other',
  ];
  double status =
      0.5; // 0 for Initial Stage, 0.5 for Middle Stage, 1 for End Stage
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
          PageHeading(
            text: "${widget.test} Test Booking",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(17, 136, 222, 0.16),
                          ),
                          color: const Color.fromRGBO(236, 247, 255, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Select Test Type",
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 106, 183, 1),
                              ),
                            ),
                            DropdownButton<String>(
                              underline: Container(
                                height: 1,
                                color: const Color.fromRGBO(0, 106, 183, 1),
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color.fromRGBO(0, 106, 183, 1),
                              ),
                              value: dropdownvalue,
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.6,
                                    ),
                                    child: FittedBox(
                                      child: Text(
                                        items,
                                        textScaleFactor: 1.5,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(0, 106, 183, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Rs 20",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(15, 135, 222, 1),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(0, 106, 183, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    minimumSize:
                                        const Size(double.maxFinite, 30),
                                    // tapTargetSize: MaterialTapTargetSize.padded,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      "Book Now",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(236, 247, 255, 1),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: const Color.fromRGBO(17, 136, 222, 0.16),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Slot No :- 001",
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 106, 183, 1),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Time : 10AM to 6PM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 106, 183, 1),
                                  ),
                                ),
                                Text(
                                  "Date : 02-04-2022",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 106, 183, 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Venue : XXXXXXXXXXXXXXXXXXXXX",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 106, 183, 1),
                              ),
                            ),
                            // Progress Bar Here
                            const SizedBox(height: 20),

                            CustomStatusBar(
                                status: status,
                                startingText: "Booked",
                                middleText: "Sample Collected",
                                endText: "Test Completed"),
                            const SizedBox(height: 20),
                            // Download Report
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(0, 106, 183, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    minimumSize:
                                        const Size(double.maxFinite, 30),
                                    // tapTargetSize: MaterialTapTargetSize.padded,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      "Click Here to Download Your Report",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
