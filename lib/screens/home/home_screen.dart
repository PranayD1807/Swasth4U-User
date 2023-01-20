import 'package:demo/screens/home/associate_screen.dart';
import 'package:demo/screens/home/ambulance_screen.dart';
import 'package:demo/screens/home/appointment_booking_screen.dart';
import 'package:demo/screens/home/buy_medicine.dart';
import 'package:demo/screens/home/card_usage.dart';
import 'package:demo/screens/home/complaint_screen.dart';
import 'package:demo/screens/home/medical_camps_screen.dart';
import 'package:demo/screens/home/online_doctor.dart';
import 'package:demo/screens/home/reports_screen.dart';
import 'package:demo/screens/home/test_screen.dart';
import 'package:demo/screens/home/transactions_screen.dart';

import 'package:demo/screens/my_profile_screen.dart';
import 'package:demo/utils/custom_size.dart';

import 'package:demo/widgets/card.dart';
import 'package:demo/widgets/home_options.dart';
import 'package:demo/widgets/top_welcome_nav.dart';
import 'package:flutter/material.dart';

import 'package:marquee/marquee.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CustomSize customSize = CustomSize();
    List<Map> tools = [
      {
        "path": "assets/my_profile_main.png",
        "text": "My Profile",
        "page": const MyProfileScreen()
      },
      {
        "path": "assets/transaction.png",
        "text": "Transaction",
        "page": TransactionsScreen()
      },
      {
        "path": "assets/associate.png",
        "text": "Associate",
        "page": const AssociateScreen()
      },
      {
        "path": "assets/medical_camps.png",
        "text": "Medical Camps",
        "page": MedicalCampsScreen()
      },
      {
        "path": "assets/card_usage.png",
        "text": "Card Usage",
        "page": CardUsageScreen()
      },
      {
        "path": "assets/ambulance.png",
        "text": "Ambulance",
        "page": const AmbulanceScreen()
      },
      {
        "path": "assets/buy_medicine.png",
        "text": "Buy Medicine",
        "page": const BuyMedicineScreen()
      },
      {
        "path": "assets/test.png",
        "text": "Test",
        "page": const TestScreen(),
      },
      {
        "path": "assets/doctor.png",
        "text": "Online Doctor",
        "page": OnlineDoctorScreen()
      },
      {
        "path": "assets/appointment.png",
        "text": "Apointment & Booking",
        "page": AppointmentBookingScreen()
      },
      {
        "path": "assets/complaint.png",
        "text": "Complaint",
        "page": const ComplaintScreen()
      },
      {
        "path": "assets/report.png",
        "text": "Report",
        "page": ReportsScreen(),
      },
    ];
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const MyTopNav(),
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                constraints: BoxConstraints(
                    // maxHeight: MediaQuery.of(context).size.height * 0.75,
                    maxHeight: customSize.getHeightForHomePage(context),
                    minHeight: 200),
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 45,
                      ),
                      MyCard(
                        cardWidth: MediaQuery.of(context).size.width * 0.9,
                      ),
                      Container(
                        // height: 200,
                        constraints: const BoxConstraints(),
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        width: double.maxFinite,
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 0.8,
                            ),
                            itemCount: tools.length,
                            itemBuilder: (context, i) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => tools[i]["page"]),
                                  );
                                },
                                child: HomeOptions(
                                  path: tools[i]["path"],
                                  text: tools[i]["text"],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(208, 255, 227, 1)),
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 25,
                child: Marquee(
                  text:
                      "Lorem ipsum Loren Ipsum Loren Ipsum Lorem Ipsum Lorem ipsum Loren Ipsum Loren Ipsum Lorem Ipsum Lorem ipsum Loren Ipsum Loren Ipsum Lorem Ipsum Lorem ipsum Loren Ipsum Loren Ipsum Lorem Ipsum Lorem ipsum Loren Ipsum Loren Ipsum Lorem Ipsum Lorem ipsum Loren Ipsum Loren Ipsum Lorem Ipsum",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
