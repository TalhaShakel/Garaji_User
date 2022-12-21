import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/components/bottom_bar.dart';
import 'package:garaji_user_app/view/screens/by_make_1.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Services/service.dart';

class ByMake extends StatefulWidget {
  const ByMake({Key? key}) : super(key: key);

  @override
  State<ByMake> createState() => _ByMakeState();
}

class _ByMakeState extends State<ByMake> {
  String defaultvalue2 = "";
  List dropDownlistData2 = [
    {"title": "2020", "value": "1 Year Ticket"},
    {"title": "2021", "value": "1 Week Ticket"},
    {"title": "2022", "value": "1 Day Ticket"},
    {"title": "2019", "value": "2"},
    {"title": "2018", "value": "3"},
    {"title": "2017", "value": "4"},
  ];

  DateTime _selectedDate = DateTime(2000);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  "Select your vehicle’s year",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Color(0xff777777),
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),

          // Container(
          //   height: 100,
          //   width: 200,
          //   child: YearPicker(
          //     firstDate: DateTime(DateTime.now().year - 100, 1),
          //     lastDate: DateTime(DateTime.now().year + 100, 1),
          //     selectedDate: _selectedDate,
          //     onChanged: (DateTime dateTime) {
          //       // close the dialog when year is selected.
          //       Navigator.pop(context);

          //       // Do something with the dateTime selected.
          //       // Remember that you need to use dateTime.year to get the year
          //     },
          //     initialDate: DateTime.now(),
          //   ),
          // ),
          // ElevatedButton(
          //     onPressed: () {
          //       _pickYear(context);
          //     },
          //     child: Text("data")),

          SizedBox(
            height: 13,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _pickYear(context);
              });
            },
            child: Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Color(0xffEAEAEA)),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(defaultvalue2 == ""
                        ? "Slected date"
                        : defaultvalue2.toString())),

                // DropdownButtonHideUnderline(
                //   child: DropdownButton<String>(
                //       iconDisabledColor: Color(0xff8B9EB0),
                //       iconEnabledColor: Color(0xff8B9EB0),
                //       isExpanded: true,
                //       isDense: true,
                //       value: defaultvalue2,
                //       onChanged: (value) {
                //         setState(() {
                //           print("selected value $value");
                //           defaultvalue2 = value!;
                //         });
                //       },
                //       items: [
                //         DropdownMenuItem(
                //           child: Padding(
                //             padding: const EdgeInsets.only(left: 10),
                //             child: Text(
                //               "Please Select",
                //               style: TextStyle(color: Colors.grey),
                //             ),
                //           ),
                //           value: "",
                //         ),
                //         ...dropDownlistData2
                //             .map<DropdownMenuItem<String>>((data) {
                //           return DropdownMenuItem<String>(
                //               child: Padding(
                //                 padding: const EdgeInsets.only(left: 10),
                //                 child: Text(
                //                   data['title'],
                //                   style: TextStyle(
                //                     fontSize: 15,
                //                   ),
                //                 ),
                //               ),
                //               value: data['title']);
                //         }).toList(),
                //       ]),
                // ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async {
              if (defaultvalue2 == "") {
                Get.snackbar("Please Select The Vehicle Year", "");
              } else {
                try {
                  EasyLoading.show();
                  await firestore_update("user", currentUserData.uid,
                      {"vehicleYear": defaultvalue2.toString()});
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ByMake1()));
                  EasyLoading.dismiss();
                } on FirebaseException catch (e) {
                  EasyLoading.dismiss();
                  print(e);
                  Get.snackbar("${e.message}", "");
                }
              }
            },
            child: Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xffFF7D01),
              ),
              child: Center(
                child: Text(
                  "Submit",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _pickYear(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        var _selectedDate = DateTime(2022);
        return AlertDialog(
          title: Text("Select Year"),
          content: Container(
            // Need to use container to add size constraint.
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(DateTime.now().year - 100, 1),
              lastDate: DateTime(DateTime.now().year + 100, 1),
              initialDate: DateTime.now(),
              // save the selected date to _selectedDate DateTime variable.
              // It's used to set the previous selected date when
              // re-showing the dialog.
              selectedDate: _selectedDate,
              onChanged: (DateTime dateTime) {
                // close the dialog when year is selected.
                print(dateTime);
                setState(() {
                  defaultvalue2 = dateTime.year.toString();
                });

                // defaultvalue2 = _selectedDate = dateTime;
                Navigator.pop(context);

                // Do something with the dateTime selected.
                // Remember that you need to use dateTime.year to get the year
              },
            ),
          ),
        );
      },
    );

    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     final Size size = MediaQuery.of(context).size;
    //     return AlertDialog(
    //       title: Text('Select a Year'),
    //       // Changing default contentPadding to make the content looks better

    //       contentPadding: const EdgeInsets.all(10),
    //       content: SizedBox(
    //         // Giving some size to the dialog so the gridview know its bounds

    //         height: size.height / 3,
    //         width: size.width,
    //         //  Creating a grid view with 3 elements per line.
    //         child: GridView.count(
    //           crossAxisCount: 3,
    //           children: [
    //             // Generating a list of 123 years starting from 2022
    //             // Change it depending on your needs.
    //             ...List.generate(
    //               123,
    //               (index) => InkWell(
    //                 onTap: () {
    //                   print(2022 - index);
    //                   // The action you want to happen when you select the year below,

    //                   // Quitting the dialog through navigator.
    //                   Navigator.pop(context);
    //                 },
    //                 // This part is up to you, it's only ui elements
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Chip(
    //                     label: Container(
    //                       padding: const EdgeInsets.all(5),
    //                       child: Text(
    //                         // Showing the year text, it starts from 2022 and ends in 1900 (you can modify this as you like)
    //                         (2022 - index).toString(),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
