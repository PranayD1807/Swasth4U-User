import 'package:demo/utils/custom_size.dart';
import 'package:demo/widgets/online_doctor_widget.dart';
import 'package:demo/widgets/page_heading.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnlineDoctorScreen extends StatelessWidget {
  OnlineDoctorScreen({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    CustomSize customSize = CustomSize();

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
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              const PageHeading(
                text: "Online Doctor",
              ),
              Container(
                constraints: BoxConstraints(
                    // maxHeight: MediaQuery.of(context).size.height * 0.8,
                    maxHeight: customSize.getHeightForScreenWithoutBottomNav(
                        context, false)),
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => const OnlineDoctorWidget(),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
