import 'package:flutter/material.dart';

class MyFilePickerButton extends StatelessWidget {
  const MyFilePickerButton(
      {Key? key, required this.text, required this.function})
      : super(key: key);
  final String text;
  final Function? function;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      // height: 50,
      padding: const EdgeInsets.only(left: 20, right: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 175, 239, 1),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset.fromDirection(2, 4),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.45,
            ),
            child: FittedBox(
              child: Text(
                text,
                // textScaleFactor: 1.2,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                elevation: 5,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
            onPressed: () async {
              await function!();
            },
            child: const Text(
              "Choose",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
