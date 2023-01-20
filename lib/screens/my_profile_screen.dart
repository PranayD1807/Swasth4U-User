import 'package:demo/widgets/my_tile.dart';
import 'package:demo/widgets/page_heading.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: <Widget>[
          const PageHeading(
            text: "My Profile",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                // height: 500,
                width: double.maxFinite,
                margin: const EdgeInsets.only(
                    top: 5, right: 10, left: 10, bottom: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color.fromRGBO(17, 136, 222, 1),
                    ),
                    left: BorderSide(
                      color: Color.fromRGBO(17, 136, 222, 1),
                    ),
                    right: BorderSide(
                      color: Color.fromRGBO(17, 136, 222, 1),
                    ),
                    bottom: BorderSide(
                      color: Color.fromRGBO(17, 136, 222, 1),
                    ),
                  ),
                  color: Color.fromRGBO(236, 247, 255, 1),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: const Color.fromRGBO(0, 106, 183, 1),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.height * 0.18,
                        child: Image.asset(
                          "assets/person.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const MyTile(text: "Name", val: "Steve Rogers"),
                      const SizedBox(height: 10),
                      const MyTile(text: "Father's Name", val: "Steve Rogers"),
                      const SizedBox(height: 10),
                      const MyTile(text: "Mother's Name", val: "Stacy Rogers"),
                      const SizedBox(height: 10),
                      const MyTile(text: "DOB", val: "01 08 2022"),
                      const SizedBox(height: 10),
                      const MyTile(
                        text: "Address",
                        val: "456 XXXXX XXXXX XXXXXXX XXXXX",
                      ),
                      const SizedBox(height: 10),
                      const MyTile(
                        text: "Ward No.",
                        val: "456",
                      ),
                      const SizedBox(height: 10),
                      const MyTile(
                        text: "Panchayat",
                        val: "XXXXXXXX",
                      ),
                      const SizedBox(height: 10),
                      const MyTile(text: "Block", val: "XXXXX"),
                      const SizedBox(height: 10),
                      const MyTile(text: "District", val: "XXXXX"),
                      const SizedBox(height: 10),
                      const MyTile(text: "State", val: "Maharahtra"),
                      const SizedBox(height: 10),
                      const MyTile(text: "Pin Code", val: "112044"),
                      const SizedBox(height: 10),
                      const MyTile(
                          text: "Mobile Number", val: "+91 94865 95158"),
                      const SizedBox(height: 10),
                      const MyTile(text: "Aadhar No.", val: "4567 4859 1526"),
                      const SizedBox(height: 10),
                      const MyTile(
                          text: "Email Id", val: "mrsinister12@gmail.com"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
