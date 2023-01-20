import 'package:flutter/material.dart';

class ReportTile extends StatelessWidget {
  const ReportTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            elevation: 5,
            child: Container(
              height: 110,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(236, 247, 255, 1),
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(color: const Color.fromRGBO(17, 136, 222, 1))),
              // margin: const EdgeInsets.all(15),
              child: Row(
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
                  Column(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.3),
                              child: const FittedBox(
                                child: Text(
                                  "Sugar Test Report",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 106, 183, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.2),
                              child: const FittedBox(
                                child: Text(
                                  "Type: ES",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 106, 183, 1),
                                      fontWeight: FontWeight.bold),
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
                            "Date : 20/03/2022",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 106, 183, 1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.5),
                        child: const FittedBox(
                          child: Text(
                            "Report No : 985621888448914566",
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
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(0, 106, 183, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minimumSize: const Size(double.maxFinite, 30),
              // tapTargetSize: MaterialTapTargetSize.padded,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
        const SizedBox(height: 20),
      ],
    );
  }
}
