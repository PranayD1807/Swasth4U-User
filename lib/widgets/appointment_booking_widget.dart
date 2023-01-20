import 'package:demo/widgets/custom_status_bar.dart';
import 'package:flutter/material.dart';

class AppointmentBookingTile extends StatelessWidget {
  const AppointmentBookingTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double status = 0.5;
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(236, 247, 255, 1),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color.fromRGBO(17, 136, 222, 1)),
      ),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Free Medical Camp - General Physician",
              textAlign: TextAlign.center,
              textScaleFactor: 1.3,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 106, 183, 1),
              ),
            ),
          ),
          const SizedBox(height: 10),
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
          const SizedBox(height: 15),
          CustomStatusBar(
            status: status,
            startingText: "Booked",
            middleText: "Visited",
            endText: "Completed",
          ),
        ],
      ),
    );
  }
}
