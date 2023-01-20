import 'package:flutter/material.dart';

class OnlineDoctorWidget extends StatelessWidget {
  const OnlineDoctorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        children: <Widget>[
          //
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Dr. Doctor Name",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 106, 183, 1),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "MBBS",
                      textScaleFactor: 1.1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 106, 183, 1),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "General Physician",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 106, 183, 1),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Experience 10+ Years",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 106, 183, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.17,
                  backgroundImage: const AssetImage("assets/card.png"),
                ),
              )
            ],
          ), // buttons
          // Buttons
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                // height: 40,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 106, 183, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                  ),
                  child: const FittedBox(
                    child: Text(
                      "Chat",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // height: 40,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 106, 183, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                  ),
                  child: const FittedBox(
                    child: Text(
                      "Call",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // height: 30,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 106, 183, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  ),
                  child: const FittedBox(
                    child: Text(
                      "Video Call",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            child: const FittedBox(
              child: Text(
                "Available From 8AM to 12PM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 106, 183, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
