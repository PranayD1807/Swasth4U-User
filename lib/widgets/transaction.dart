import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(236, 247, 255, 1),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromRGBO(17, 136, 222, 1))),
      margin: const EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/card.png"),
            ),
          ),
          Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6),
                child: const FittedBox(
                  child: Text(
                    "Service Name: SWASTH4U Card",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 106, 183, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.28),
                      child: const FittedBox(
                        child: Text(
                          "Date : 20/03/2022",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 106, 183, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 106, 183, 1),
                          borderRadius: BorderRadius.circular(5)),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.28),
                      child: const FittedBox(
                        child: Text(
                          "Amount: Rs 200",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6),
                child: const FittedBox(
                  child: Text(
                    "Transaction ID: 985621888448914566",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 106, 183, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
