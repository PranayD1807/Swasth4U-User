import 'package:flutter/material.dart';

class HomeOptions extends StatelessWidget {
  const HomeOptions({Key? key, required this.path, required this.text})
      : super(key: key);
  final String path;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.1,
          backgroundColor: const Color.fromRGBO(0, 106, 183, 1),
          child: Image.asset(
            path,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromRGBO(0, 106, 183, 1),
            ),
          ),
        )
      ],
    );
  }
}
