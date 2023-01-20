import 'package:demo/widgets/my_tile.dart';
import 'package:flutter/material.dart';

class PreviousAmbulanceTile extends StatelessWidget {
  const PreviousAmbulanceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      width: double.maxFinite,
      margin: const EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 10),
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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Previous Details",
                textScaleFactor: 1.3,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(54, 105, 166, 1)),
              ),
            ),
            const SizedBox(height: 10),
            const MyTile(text: "Total KM Run", val: "105"),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "From",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Color.fromRGBO(54, 105, 166, 1),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ":   ",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Color.fromRGBO(54, 105, 166, 1),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Delhi",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Color.fromRGBO(54, 105, 166, 1),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "To",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Color.fromRGBO(54, 105, 166, 1),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ":   ",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Color.fromRGBO(54, 105, 166, 1),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Gaya",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          color: Color.fromRGBO(54, 105, 166, 1),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
              color: Color.fromRGBO(50, 140, 236, 1),
            ),
            const MyTile(text: "Total Amount", val: "Rs 8900"),
          ],
        ),
      ),
    );
  }
}
