import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:garaji_user_app/view/screens/by_make_3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Services/service.dart';

class ByMake2 extends StatefulWidget {
  const ByMake2({Key? key}) : super(key: key);

  @override
  State<ByMake2> createState() => _ByMake2State();
}

class _ByMake2State extends State<ByMake2> {
  TextEditingController defaultvalue2 = TextEditingController();
  List dropDownlistData2 = [
    {"title": "ILX", "value": "1 Year Ticket"},
    {"title": "MDX", "value": "1 Week Ticket"},
    {"title": "NSX", "value": "1 Day Ticket"},
    {"title": "RDX", "value": "2"},
    {"title": "RLX", "value": "3"},
    {"title": "TLX", "value": "4"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Tell us about your vehicle",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "By Make",
                style: TextStyle(
                    fontSize: 22,
                    color: ConstColors.secondaryColor,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 116,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF1F1F1),
                      border: Border.all(color: Color(0xffEAEAEA))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Image.asset(
                        "assets/images/carLogo.png",
                        height: 30,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "${currentUserData.vehicle}",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Select your vehicle???s model",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(0xff777777),
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color(0xffEAEAEA)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 20),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          iconDisabledColor: Color(0xff8B9EB0),
                          iconEnabledColor: Color(0xff8B9EB0),
                          isExpanded: true,
                          isDense: true,
                          value: defaultvalue2.text.trim().toString(),
                          onChanged: (value) {
                            setState(() {
                              print("selected value $value");
                              defaultvalue2.text = value!;
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Please Select",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              value: "",
                            ),
                            ...dropDownlistData2
                                .map<DropdownMenuItem<String>>((data) {
                              return DropdownMenuItem<String>(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      data['title'],
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  value: data['title']);
                            }).toList(),
                          ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color(0xffEAEAEA)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextFormField(
                    controller: defaultvalue2,
                    decoration: InputDecoration(
                      hintText: "Please Slect",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async {
                  if (defaultvalue2.text.trim().toString() == "") {
                    Get.snackbar("Please Select The Vehicle's make", "");
                  } else {
                    try {
                      EasyLoading.show();
                      await firestore_update("user", currentUserData.uid, {
                        "vehicleModel": defaultvalue2.text.trim().toString()
                      });
                      EasyLoading.dismiss();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ByMake3()));
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
        ),
      ),
    );
  }
}
