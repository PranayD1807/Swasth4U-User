import 'package:demo/widgets/page_heading.dart';
import 'package:flutter/material.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController descriptionCtrl = TextEditingController();
  final TextEditingController headingCtrl = TextEditingController();

  //  Initial Selected Value

  String moreComplaintValue = "More Complaints";
  int currentSelectedItemIndex = 0;

  final moreComplaints = ["More Complaints", "Other", "Custom"];
  final complaintTypes = [
    'XXXX',
    'XXXXXXX',
    'XXXXX',
    'XXX',
    'XXXXXXXXXXXXX',
  ];

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
            text: "Complaint",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Card(
                        elevation: 3,
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(17, 136, 222, 0.16),
                            ),
                            color: const Color.fromRGBO(236, 247, 255, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "Complaint Type",
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 106, 183, 1),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: double.maxFinite,
                                child: Wrap(
                                  spacing: 15,
                                  runSpacing: 10,
                                  alignment: WrapAlignment.start,
                                  children: List.generate(
                                    complaintTypes.length,
                                    (index) => InkWell(
                                      onTap: () {
                                        setState(() {
                                          currentSelectedItemIndex = index;
                                        });
                                      },
                                      child: _ComplaintTypeTile(
                                        isSelected:
                                            index == currentSelectedItemIndex,
                                        text: complaintTypes[index],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              DropdownButton<String>(
                                underline: Container(
                                  height: 1,
                                  color: const Color.fromRGBO(0, 106, 183, 1),
                                ),
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color.fromRGBO(0, 106, 183, 1),
                                ),
                                value: moreComplaintValue,
                                items:
                                    moreComplaints.map((String moreComplaints) {
                                  return DropdownMenuItem(
                                    value: moreComplaints,
                                    child: Container(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                      ),
                                      child: FittedBox(
                                        child: Text(
                                          moreComplaints,
                                          // textScaleFactor: 1.5,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(0, 106, 183, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    moreComplaintValue = newValue!;
                                  });
                                },
                              ),
                              const SizedBox(height: 10),
                              if (moreComplaintValue == "Custom")
                                const Text(
                                  "Complaint Heading",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(15, 135, 222, 1),
                                  ),
                                ),
                              if (moreComplaintValue == "Custom")
                                const SizedBox(height: 10),
                              if (moreComplaintValue == "Custom")
                                TextFormField(
                                  controller: headingCtrl,
                                  decoration: const InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(0, 106, 183, 0.45),
                                    ),
                                    hintText: "Enter your heading here...",
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                  maxLines: 1,
                                ),
                              if (moreComplaintValue == "Custom")
                                const SizedBox(height: 10),
                              const Text(
                                "write short description",
                                textScaleFactor: 1.2,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(15, 135, 222, 1),
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: descriptionCtrl,
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(0, 106, 183, 0.45),
                                  ),
                                  hintText: "Enter your concern here...",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                maxLines: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(0, 106, 183, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            minimumSize: const Size(double.maxFinite, 30),
                            // tapTargetSize: MaterialTapTargetSize.padded,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                          ),
                          child: const FittedBox(
                            child: Text(
                              "Raise a Complaint",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ComplaintTypeTile extends StatelessWidget {
  const _ComplaintTypeTile(
      {Key? key, required this.isSelected, required this.text})
      : super(key: key);
  final bool isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 10,
      // width: MediaQuery.of(context).size.width * 0.25,
      // margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color.fromRGBO(
            0,
            106,
            183,
            0.4,
          ),
        ),
        color: isSelected
            ? const Color.fromRGBO(0, 106, 183, 1)
            : const Color.fromRGBO(255, 255, 255, 1),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: !isSelected
              ? const Color.fromRGBO(0, 106, 183, 1)
              : const Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}
