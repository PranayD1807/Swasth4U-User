import 'package:flutter/material.dart';

class CustomStatusBar extends StatelessWidget {
  const CustomStatusBar(
      {Key? key,
      required this.status,
      required this.startingText,
      required this.middleText,
      required this.endText})
      : super(key: key);

  /// double status: 0 for Initial Stage, 0.5 For Middle Stage, 1 for End Stage.
  final double status;
  final String startingText;
  final String middleText;
  final String endText;
  @override
  Widget build(BuildContext context) {
    double widthFac = 0.075;
    if (status != 0) {
      widthFac = status;
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          height: 10,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(232, 229, 229, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: widthFac,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(14, 203, 102, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                child: Container(
                  height: 5,
                  width: 5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              startingText,
              style: const TextStyle(
                color: Color.fromRGBO(0, 106, 183, 1),
              ),
            ),
            Text(
              middleText,
              style: const TextStyle(color: Color.fromRGBO(0, 106, 183, 1)),
            ),
            Text(
              endText,
              style: const TextStyle(color: Color.fromRGBO(0, 106, 183, 1)),
            ),
          ],
        )
      ],
    );
  }
}
