import 'package:demo/widgets/card_usage_widget.dart';
import 'package:demo/widgets/date_filter.dart';
import 'package:demo/widgets/page_heading.dart';
import 'package:demo/widgets/previous_ambulance_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmbulancePreviousDetailsScreen extends StatelessWidget {
  AmbulancePreviousDetailsScreen({
    Key? key,
  }) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();

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
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            const PageHeading(
              text: "Ambulance History",
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.85,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) =>
                          const PreviousAmbulanceTile(),
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
