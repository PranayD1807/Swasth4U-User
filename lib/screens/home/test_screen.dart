import 'package:demo/screens/home/test_booking_screen.dart';
import 'package:demo/widgets/home_options.dart';
import 'package:demo/widgets/page_heading.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> tools = [
      {
        "path": "assets/my_profile_main.png",
        "text": "Sugar",
      },
      {
        "path": "assets/transaction.png",
        "text": "Sugar",
      },
    ];
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
            text: "Test",
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Container(
              // height: 200,
              constraints: const BoxConstraints(),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.maxFinite,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.9,
                ),
                itemCount: tools.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TestBookingScreen(
                            test: tools[i]["text"],
                          ),
                        ),
                      );
                    },
                    child: HomeOptions(
                      path: tools[i]["path"],
                      text: tools[i]["text"],
                    ),
                  );
                },
              ),
            )),
          ),
        ],
      ),
    );
  }
}
