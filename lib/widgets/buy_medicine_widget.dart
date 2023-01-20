import 'package:flutter/material.dart';

class BuyMedicineWidget extends StatelessWidget {
  const BuyMedicineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 110,
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(236, 247, 255, 1),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromRGBO(17, 136, 222, 1))),
      margin: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Card(
              elevation: 5,
              shape: CircleBorder(),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/card.png"),
              ),
            ),
          ),
          Expanded(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5),
                  child: const Text(
                    "Medicine Name",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 106, 183, 1),
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5),
                  child: const Text(
                    "Category",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 106, 183, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5),
                  child: const Text(
                    "Composition",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 106, 183, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 106, 183, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: const FittedBox(
                    child: Text(
                      "Price: Rs 200",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
                color: Color.fromRGBO(0, 106, 183, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
