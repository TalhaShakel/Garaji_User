import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/about_vehicle/about_your_vehicle.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Models/userModels.dart';

class RequestServices extends StatefulWidget {
  RequestServices({Key? key}) : super(key: key);

  @override
  State<RequestServices> createState() => _RequestServicesState();
}

class _RequestServicesState extends State<RequestServices> {
  var carName = TextEditingController();

  List lst = ["2019 BMW 330i", "2018 Chevrolet Equinox"];

  var vehicle;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Request Services",
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
                height: 50,
              ),
              Text(
                "Select a vehicle to service",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics:
                      NeverScrollableScrollPhysics(parent: ScrollPhysics()),
                  shrinkWrap: true,
                  itemCount: lst.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Get.snackbar("Slected", "${lst[index]}");
                        vehicle = "${lst[index]}";

                        setState(() {
                          vehicle = "${lst[index]}";
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          height: 116,
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: vehicle == "${lst[index]}"
                                  ? Colors.green
                                  : Color(0xffF1F1F1),
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
                                "${lst[index]}",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 15,
              ),
              // GestureDetector(
              //   onTap: () {
              //     Get.snackbar("Slected", "2018 Chevrolet Equinox");
              //     vehicle = "2018 Chevrolet Equinox";
              //   },
              //   child: Container(
              //     height: 116,
              //     width: double.infinity,
              //     margin: EdgeInsets.only(left: 20, right: 20),
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Color(0xffF1F1F1),
              //         border: Border.all(color: Color(0xffEAEAEA))),
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 25,
              //         ),
              //         Image.asset(
              //           "assets/images/carLogo1.png",
              //           height: 30,
              //         ),
              //         SizedBox(
              //           height: 15,
              //         ),
              //         Text(
              //           "2018 Chevrolet Equinox",
              //           style: GoogleFonts.roboto(
              //             textStyle: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.w500,
              //                 fontSize: 17),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              selected == true
                  ? Card(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      elevation: 8,
                      child: TextFormField(
                        controller: carName,
                        decoration: InputDecoration(
                            hintText: "Please Enter Vehicle Name"),
                      ))
                  : Container(),
              selected == true
                  ? SizedBox(
                      height: 15,
                    )
                  : Container(),
              // ElevatedButton(
              //     onPressed: () {
              // setState(() {
              //   lst.add("${carName.text}".trim());
              // });
              //     },
              //     child: Text("data")),
              InkWell(
                onTap: () {
                  if (selected == true) {
                    setState(() {
                      lst.add("${carName.text}".trim());
                      carName.text = "";
                    });
                  } else {
                    setState(() {
                      selected = true;
                    });
                  }
                },
                child: Container(
                  height: 64,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF1F1F1),
                      border: Border.all(color: Color(0xffFF7D01))),
                  child: Center(
                    child: Text(
                      "+ Add a vehicle",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xffFF7D01),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () async {
                  if (vehicle == null) {
                    Get.snackbar("Please Select The Vehicle", "");
                  } else {
                    try {
                      EasyLoading.show();
                      firestore_update(
                          "user", currentUserData.uid, {"vehicle": vehicle});
                      var document = await firestore_get(
                          "user", currentUserData.uid.toString());
                      UserModel userdata = UserModel.fromMap(
                          document.data() as Map<String, dynamic>);
                      currentUserData = userdata;
                     
                      EasyLoading.dismiss();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutVehicle()));
                    } on FirebaseException catch (e) {
                      EasyLoading.dismiss();
                      print(e);
                      Get.snackbar("${e.message}", "");
                    }
                  }
                },
                child: Container(
                  height: 64,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF1F1F1),
                      border: Border.all(color: Color(0xffFF7D01))),
                  child: Center(
                    child: Text(
                      "Next",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xffFF7D01),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
