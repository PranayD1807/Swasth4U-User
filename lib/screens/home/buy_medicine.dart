import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuyMedicineScreen extends StatefulWidget {
  const BuyMedicineScreen({Key? key}) : super(key: key);

  @override
  State<BuyMedicineScreen> createState() => _BuyMedicineScreenState();
}

class _BuyMedicineScreenState extends State<BuyMedicineScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController searchCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.keyboard_arrow_left_outlined),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.blue,
      ),
      // body: SingleChildScrollView(
      //   physics: const NeverScrollableScrollPhysics(),
      //   child: Column(
      //     children: <Widget>[
      //       Stack(
      //         children: [
      //           const PageHeading(
      //             text: "Buy Medicines",
      //           ),
      //           Positioned(
      //             right: 10,
      //             child: IconButton(
      //               padding: EdgeInsets.zero,
      //               constraints: const BoxConstraints(),
      //               onPressed: () {},
      //               icon: const ImageIcon(
      //                 AssetImage("assets/kart.png"),
      //                 color: Colors.white,
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //       Container(
      //         margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      //         child: Form(
      //           key: formKey,
      //           child: Material(
      //             elevation: 5,
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(25)),
      //             child: TextFormField(
      //               controller: searchCtrl,
      //               validator: (val) {
      //                 if (val!.isEmpty) {
      //                   return "Enter text to search";
      //                 }
      //                 return null;
      //               },
      //               decoration: InputDecoration(
      //                 filled: true,
      //                 focusColor: const Color.fromRGBO(234, 247, 255, 1),
      //                 hoverColor: const Color.fromRGBO(234, 247, 255, 1),
      //                 fillColor: const Color.fromRGBO(234, 247, 255, 1),
      //                 prefix: Padding(
      //                   padding: const EdgeInsets.only(left: 10, right: 15.0),
      //                   child: IconButton(
      //                     onPressed: () {},
      //                     icon: const ImageIcon(
      //                       AssetImage("assets/search.png"),
      //                       color: Color.fromRGBO(0, 175, 239, 1),
      //                     ),
      //                     iconSize: 20,
      //                     padding: EdgeInsets.zero,
      //                     constraints: const BoxConstraints(),
      //                   ),
      //                 ),
      //                 errorBorder: OutlineInputBorder(
      //                   borderSide: const BorderSide(
      //                     width: 1,
      //                     color: Colors.red,
      //                   ),
      //                   borderRadius: BorderRadius.circular(25),
      //                 ),
      //                 hintStyle: const TextStyle(
      //                     color: Color.fromRGBO(54, 105, 166, 1)),
      //                 focusedErrorBorder: OutlineInputBorder(
      //                   borderSide: const BorderSide(
      //                     width: 1,
      //                     color: Colors.red,
      //                   ),
      //                   borderRadius: BorderRadius.circular(25),
      //                 ),
      //                 contentPadding: const EdgeInsets.symmetric(
      //                     horizontal: 5, vertical: 5),
      //                 labelStyle: const TextStyle(
      //                   color: Color.fromRGBO(79, 124, 177, 1),
      //                 ),
      //                 floatingLabelStyle: const TextStyle(
      //                     color: Color.fromRGBO(79, 124, 177, 1), fontSize: 10),
      //                 hintText: "Search...",
      //                 enabledBorder: OutlineInputBorder(
      //                   borderSide: const BorderSide(
      //                     width: 1,
      //                     color: Color.fromRGBO(0, 175, 239, 1),
      //                   ),
      //                   borderRadius: BorderRadius.circular(25),
      //                 ),
      //                 focusedBorder: OutlineInputBorder(
      //                   borderSide: const BorderSide(
      //                     width: 1,
      //                     color: Color.fromRGBO(0, 175, 239, 1),
      //                   ),
      //                   borderRadius: BorderRadius.circular(25),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         constraints: BoxConstraints(
      //           maxHeight: MediaQuery.of(context).size.height * 0.8,
      //         ),
      //         child: ListView.builder(
      //           shrinkWrap: true,
      //           itemCount: 5,
      //           itemBuilder: (context, index) => const BuyMedicineWidget(),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
              child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Image.asset(
                "assets/Red-Coming-Soon-Stamp.png",
                fit: BoxFit.contain,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
