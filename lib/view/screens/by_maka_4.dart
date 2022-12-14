import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/Models/userModels.dart';
import 'package:garaji_user_app/components/bottom_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Services/service.dart';
import '../../constants/const_colors.dart';

class ByMake4 extends StatefulWidget {
  const ByMake4({Key? key}) : super(key: key);

  @override
  State<ByMake4> createState() => _ByMake4State();
}

class _ByMake4State extends State<ByMake4> {
  var zipCode = TextEditingController();

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
                      "Please enter your zip code so that we \ncan find you local estimates.",
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
                    padding: const EdgeInsets.only(left: 18.0, right: 0),
                    child: TextFormField(
                      controller: zipCode,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'City, State or Zip Code',
                          hintStyle: TextStyle(
                              color: Color(0xffB8B8B8),
                              fontWeight: FontWeight.w400),
                          suffixIcon: Icon(
                            Icons.send_sharp,
                            color: ConstColors.secondaryColor,
                          )),
                    ),
                    // child: DropdownButtonHideUnderline(
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
                    //               style: TextStyle(
                    //                   color: Colors.grey),
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
                    //               value: data['value']);
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
                  if (zipCode.text.toString().trim() == "") {
                    Get.snackbar("Please Enter The ZipCode", "");
                  } else {
                    try {
                      EasyLoading.show();
                      await firestore_update("user", currentUserData.uid, {
                        "zipCode": zipCode.text.toString().trim(),
                        "vehicleInformation": true
                      });
                      var document = await firestore_get(
                          "user", "${fAuth.currentUser!.uid}");
                      print(document.toString());

                      UserModel userdata = UserModel.fromMap(
                          document.data() as Map<String, dynamic>);
                      currentUserData = userdata;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomBar()));
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
                      "Continue",
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
