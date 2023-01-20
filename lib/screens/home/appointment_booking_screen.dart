import 'package:demo/utils/custom_size.dart';
import 'package:demo/widgets/appointment_booking_widget.dart';
import 'package:demo/widgets/date_filter.dart';
import 'package:demo/widgets/page_heading.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppointmentBookingScreen extends StatelessWidget {
  AppointmentBookingScreen({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    CustomSize customSize = CustomSize();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showGeneralDialog(
            context: context,
            barrierColor: Colors.black12.withOpacity(0.6), // Background color
            barrierDismissible: true,
            barrierLabel: 'Dialog',
            transitionDuration: const Duration(milliseconds: 400),
            pageBuilder: (_, __, ___) {
              return const DateFilterScreen();
            },
          );
        },
        backgroundColor: const Color.fromRGBO(0, 106, 183, 1),
        child: const ImageIcon(AssetImage("assets/filter.png")),
      ),
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
                text: "Appointment & Booking",
              ),
              Container(
                constraints: BoxConstraints(
                    // maxHeight: MediaQuery.of(context).size.height * 0.8,
                    maxHeight: customSize.getHeightForScreenWithoutBottomNav(
                  context,
                  false,
                )),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      const AppointmentBookingTile(),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
