import 'package:custom_check_box/custom_check_box.dart';
import 'package:expandable/expandable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/Models/userModels.dart';
import 'package:garaji_user_app/components/drawer_screen.dart';
import 'package:garaji_user_app/main.dart';
import 'package:garaji_user_app/view/screens/Bottomfilter.dart';
import 'package:garaji_user_app/view/screens/Profile/my_profile.dart';
import 'package:garaji_user_app/view/screens/notifications.dart';
import 'package:garaji_user_app/view/screens/technician_profile.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../Services/service.dart';
import '../constants/const_colors.dart';
import '../constants/const_images.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _search = TextEditingController();
  bool isVisible = true;
  double _value = 40.0;
  bool medicine = false;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  getdata() async {
    try {
      EasyLoading.show();
      var data = await firestore_get("user", currentUserData.uid.toString());
      UserModel userdata =
          UserModel.fromMap(data.data() as Map<String, dynamic>);
      currentUserData = userdata;
      EasyLoading.dismiss();
    } on FirebaseException catch (e) {
      print(e);
      Get.snackbar("${e.message}", "");
    }
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      drawer: DrawerScreen(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
              child: FittedBox(
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.network(
                        currentUserData.userImage,
                        fit: BoxFit.cover,
                        width: 102,
                        height: 102,
                      ),
                    )),
              )),
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyProfile()));
          },
          child: Text(
            "${currentUserData.fullName}",
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: Color(0xff3C3D3F),
                    fontSize: 17,
                    fontWeight: FontWeight.w500)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Icon(Icons.search, color: Color(0xff3C3D3F)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu_outlined,
                  color: Color(0xff3C3D3F),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Icon(Icons.notifications, color: Color(0xff3C3D3F))),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Color(0xff777777).withOpacity(0.22))),
                      child: TextFormField(
                        controller: _search,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xff777777),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // EasyLoading.show();
                            Get.snackbar(
                                "Work on this Module will be after the Service app becomes. so that's why here dummy data is shown.",
                                "",
                                duration: Duration(seconds: 5),
                                colorText: Colors.white);
                            ssnack(
                                "Work on this Module will be after the Service app becomes. so that's why here dummy data is shown.");
                            // EasyLoading.dismiss();
                            setState(() {});

                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                builder: (context) => Container(
                                    child: BottomFilter()

                                    // SingleChildScrollView(
                                    //   child: Column(
                                    //     children: [
                                    //       SizedBox(
                                    //         height: 20,
                                    //       ),
                                    //       Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment
                                    //                 .spaceBetween,
                                    //         children: [
                                    //           SizedBox(
                                    //             width: 0,
                                    //           ),
                                    //           Text(
                                    //             "Cancel",
                                    //             style: TextStyle(
                                    //                 color: Color(0xffEB5757),
                                    //                 fontSize: 17,
                                    //                 fontWeight:
                                    //                     FontWeight.w500),
                                    //           ),
                                    //           Container(
                                    //             height: 42,
                                    //             width: 138,
                                    //             decoration: BoxDecoration(
                                    //               color: ConstColors
                                    //                   .primaryColor,
                                    //               borderRadius:
                                    //                   BorderRadius.circular(
                                    //                       40),
                                    //             ),
                                    //             child: Row(
                                    //               mainAxisAlignment:
                                    //                   MainAxisAlignment
                                    //                       .center,
                                    //               children: [
                                    //                 Text(
                                    //                   "Quote Filters",
                                    //                   style: TextStyle(
                                    //                       color: Colors.white,
                                    //                       fontWeight:
                                    //                           FontWeight.w500,
                                    //                       fontSize: 17),
                                    //                 )
                                    //               ],
                                    //             ),
                                    //           ),
                                    //           Text(
                                    //             "Reset",
                                    //             style: TextStyle(
                                    //                 color: Color(0xffEB5757),
                                    //                 fontSize: 17,
                                    //                 fontWeight:
                                    //                     FontWeight.w500),
                                    //           ),
                                    //           SizedBox(
                                    //             width: 0,
                                    //           ),
                                    //         ],
                                    //       ),
                                    //       SizedBox(
                                    //         height: 20,
                                    //       ),
                                    //       Divider(),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(
                                    //             left: 20, right: 20),
                                    //         child: ExpandablePanel(
                                    //             header: Text(
                                    //               "Service",
                                    //               style: TextStyle(
                                    //                   fontSize: 20,
                                    //                   fontWeight:
                                    //                       FontWeight.w600),
                                    //             ),
                                    //             collapsed: SizedBox(
                                    //               height: 0,
                                    //             ),
                                    //             expanded: Column(
                                    //               children: [
                                    //                 ExpandablePanel(
                                    //                     header: Row(
                                    //                       children: [
                                    //                         Text(
                                    //                           "Mechanics",
                                    //                           style: TextStyle(
                                    //                               fontSize:
                                    //                                   15,
                                    //                               fontWeight:
                                    //                                   FontWeight
                                    //                                       .w600),
                                    //                         ),
                                    //                         SizedBox(
                                    //                           width: 5,
                                    //                         ),
                                    //                         // Icon(Icons.arrow_drop_down_sharp)
                                    //                       ],
                                    //                     ),
                                    //                     collapsed: SizedBox(
                                    //                       height: 0,
                                    //                     ),
                                    //                     expanded: Column(
                                    //                         children: [
                                    //                           Row(
                                    //                             children: [
                                    //                               CustomCheckBox(
                                    //                                   value:
                                    //                                       medicine,
                                    //                                   uncheckedFillColor:
                                    //                                       Colors
                                    //                                           .white,
                                    //                                   // shouldShowBorder: true,
                                    //                                   borderColor:
                                    //                                       Colors
                                    //                                           .grey,
                                    //                                   checkedFillColor:
                                    //                                       ConstColors
                                    //                                           .secondaryColor,
                                    //                                   borderRadius:
                                    //                                       3,
                                    //                                   borderWidth:
                                    //                                       1,
                                    //                                   checkBoxSize:
                                    //                                       15,
                                    //                                   onChanged:
                                    //                                       (val) {
                                    //                                     setState(
                                    //                                         () {
                                    //                                       medicine =
                                    //                                           val;
                                    //                                     });
                                    //                                   }),
                                    //                               Text(
                                    //                                 "Light Mechanic",
                                    //                                 style: TextStyle(
                                    //                                     fontSize:
                                    //                                         15,
                                    //                                     fontWeight:
                                    //                                         FontWeight.w400),
                                    //                               )
                                    //                             ],
                                    //                           ),
                                    //                           Row(
                                    //                             children: [
                                    //                               CustomCheckBox(
                                    //                                   value:
                                    //                                       isVisible,
                                    //                                   uncheckedFillColor:
                                    //                                       Colors
                                    //                                           .white,
                                    //                                   // shouldShowBorder: true,
                                    //                                   borderColor:
                                    //                                       Colors
                                    //                                           .grey,
                                    //                                   checkedFillColor:
                                    //                                       ConstColors
                                    //                                           .secondaryColor,
                                    //                                   borderRadius:
                                    //                                       3,
                                    //                                   borderWidth:
                                    //                                       1,
                                    //                                   checkBoxSize:
                                    //                                       15,
                                    //                                   onChanged:
                                    //                                       (val) {
                                    //                                     setState(
                                    //                                         () {
                                    //                                       isVisible =
                                    //                                           val;
                                    //                                     });
                                    //                                   }),
                                    //                               Text(
                                    //                                 "Light Mechanic",
                                    //                                 style: TextStyle(
                                    //                                     fontSize:
                                    //                                         15,
                                    //                                     fontWeight:
                                    //                                         FontWeight.w400),
                                    //                               )
                                    //                             ],
                                    //                           ),
                                    //                           Row(
                                    //                             children: [
                                    //                               Text(
                                    //                                 "Electro Mechanics",
                                    //                                 style: TextStyle(
                                    //                                     fontSize:
                                    //                                         15,
                                    //                                     fontWeight:
                                    //                                         FontWeight.w600),
                                    //                               ),
                                    //                               CustomCheckBox(
                                    //                                   value:
                                    //                                       medicine,
                                    //                                   uncheckedFillColor:
                                    //                                       Colors
                                    //                                           .white,
                                    //                                   // shouldShowBorder: true,
                                    //                                   borderColor:
                                    //                                       Colors
                                    //                                           .grey,
                                    //                                   checkedFillColor:
                                    //                                       ConstColors
                                    //                                           .secondaryColor,
                                    //                                   borderRadius:
                                    //                                       3,
                                    //                                   borderWidth:
                                    //                                       1,
                                    //                                   checkBoxSize:
                                    //                                       15,
                                    //                                   onChanged:
                                    //                                       (val) {
                                    //                                     setState(
                                    //                                         () {
                                    //                                       medicine =
                                    //                                           val;
                                    //                                     });
                                    //                                   }),
                                    //                             ],
                                    //                           ),
                                    //                         ])),
                                    //                 // Row(
                                    //                 //   children: [
                                    //                 //     Text("Mechanics",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                    //                 //     SizedBox(width: 5,),
                                    //                 //     Icon(Icons.arrow_drop_down_sharp)
                                    //                 //   ],
                                    //                 // ),
                                    //                 // Row(
                                    //                 //   children: [
                                    //                 //     CustomCheckBox(
                                    //                 //         value: medicine,
                                    //                 //         uncheckedFillColor: Colors.white,
                                    //                 //         // shouldShowBorder: true,
                                    //                 //         borderColor: Colors.grey,
                                    //                 //         checkedFillColor:ConstColors.secondaryColor,
                                    //                 //         borderRadius: 3,
                                    //                 //         borderWidth: 1,
                                    //                 //         checkBoxSize: 15,
                                    //                 //         onChanged: (val) {
                                    //                 //           setState(() {
                                    //                 //             medicine = val;
                                    //                 //           });
                                    //                 //         }),
                                    //                 //     Text("Light Mechanic",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
                                    //                 //
                                    //                 //   ],
                                    //                 // ),
                                    //                 // Row(
                                    //                 //   children: [
                                    //                 //     CustomCheckBox(
                                    //                 //         value: isVisible,
                                    //                 //         uncheckedFillColor: Colors.white,
                                    //                 //         // shouldShowBorder: true,
                                    //                 //         borderColor: Colors.grey,
                                    //                 //         checkedFillColor:ConstColors.secondaryColor,
                                    //                 //         borderRadius: 3,
                                    //                 //         borderWidth: 1,
                                    //                 //         checkBoxSize: 15,
                                    //                 //         onChanged: (val) {
                                    //                 //           setState(() {
                                    //                 //             isVisible = val;
                                    //                 //           });
                                    //                 //         }),
                                    //                 //     Text("Light Mechanic",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
                                    //                 //
                                    //                 //   ],
                                    //                 // ),
                                    //                 // Row(
                                    //                 //   children: [
                                    //                 //     Text("Electro Mechanics",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                                    //                 //     CustomCheckBox(
                                    //                 //         value: medicine,
                                    //                 //         uncheckedFillColor: Colors.white,
                                    //                 //         // shouldShowBorder: true,
                                    //                 //         borderColor: Colors.grey,
                                    //                 //         checkedFillColor:ConstColors.secondaryColor,
                                    //                 //         borderRadius: 3,
                                    //                 //         borderWidth: 1,
                                    //                 //         checkBoxSize: 15,
                                    //                 //         onChanged: (val) {
                                    //                 //           setState(() {
                                    //                 //             medicine = val;
                                    //                 //           });
                                    //                 //         }),
                                    //                 //
                                    //                 //   ],
                                    //                 // ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Preventive Maintenance ",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(Icons
                                    //                         .arrow_drop_down_sharp)
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Alignment",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: isVisible,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             isVisible =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Oil Change",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: isVisible,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             isVisible =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Brake Pads",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Transmission Mechanics",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Body Shop ",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(Icons
                                    //                         .arrow_drop_down_sharp)
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Repairs",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: isVisible,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             isVisible =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Painting",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: isVisible,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             isVisible =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Detailing",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "A/C",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Tyre Shope",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Muffler Shop",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Auto Parts",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Junker",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     Text(
                                    //                       "Customizations",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w600),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(Icons
                                    //                         .arrow_drop_down_sharp)
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 12,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Sound and Alarm",
                                    //                       style: TextStyle(
                                    //                           fontSize: 12,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 12,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Racing Modifications",
                                    //                       style: TextStyle(
                                    //                           fontSize: 12,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 12,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Car Wrapping",
                                    //                       style: TextStyle(
                                    //                           fontSize: 12,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 12,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Windows Tinting",
                                    //                       style: TextStyle(
                                    //                           fontSize: 12,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 12,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Tuning",
                                    //                       style: TextStyle(
                                    //                           fontSize: 12,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     ),
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 12,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "Body Modifications ",
                                    //                       style: TextStyle(
                                    //                           fontSize: 12,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400),
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //               ],
                                    //             )),
                                    //       ),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Divider(),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(
                                    //             left: 20, right: 20),
                                    //         child: ExpandablePanel(
                                    //             header: Text(
                                    //               "Rating",
                                    //               style: TextStyle(
                                    //                   fontSize: 20,
                                    //                   fontWeight:
                                    //                       FontWeight.w600),
                                    //             ),
                                    //             collapsed: SizedBox(
                                    //               height: 0,
                                    //             ),
                                    //             expanded: Column(
                                    //               children: [
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "5.00",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400,
                                    //                           color: Color(
                                    //                               0xff777777)),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "4.00",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400,
                                    //                           color: Color(
                                    //                               0xff777777)),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "3.00",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400,
                                    //                           color: Color(
                                    //                               0xff777777)),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "2.00",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400,
                                    //                           color: Color(
                                    //                               0xff777777)),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //                 Row(
                                    //                   children: [
                                    //                     CustomCheckBox(
                                    //                         value: medicine,
                                    //                         uncheckedFillColor:
                                    //                             Colors.white,
                                    //                         // shouldShowBorder: true,
                                    //                         borderColor:
                                    //                             Colors.grey,
                                    //                         checkedFillColor:
                                    //                             ConstColors
                                    //                                 .secondaryColor,
                                    //                         borderRadius: 3,
                                    //                         borderWidth: 1,
                                    //                         checkBoxSize: 15,
                                    //                         onChanged: (val) {
                                    //                           setState(() {
                                    //                             medicine =
                                    //                                 val;
                                    //                           });
                                    //                         }),
                                    //                     Text(
                                    //                       "1.00",
                                    //                       style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400,
                                    //                           color: Color(
                                    //                               0xff777777)),
                                    //                     ),
                                    //                     SizedBox(
                                    //                       width: 5,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.amber,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                     Icon(
                                    //                       Icons.star,
                                    //                       color: Colors.grey,
                                    //                       size: 13,
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //               ],
                                    //             )),
                                    //       ),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Divider(),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(
                                    //             left: 20, right: 20),
                                    //         child: ExpandablePanel(
                                    //           header: Text(
                                    //             "Distance",
                                    //             style: TextStyle(
                                    //                 fontSize: 20,
                                    //                 fontWeight:
                                    //                     FontWeight.w600),
                                    //           ),
                                    //           collapsed: SizedBox(
                                    //             height: 0,
                                    //           ),
                                    //           expanded: Column(
                                    //             children: [
                                    //               Row(
                                    //                 mainAxisAlignment:
                                    //                     MainAxisAlignment.end,
                                    //                 children: [
                                    //                   Text('7.5 km')
                                    //                 ],
                                    //               ),
                                    //               SfSlider(
                                    //                 min: 0.0,
                                    //                 max: 100.0,
                                    //                 activeColor: ConstColors
                                    //                     .secondaryColor,
                                    //                 inactiveColor: Colors.grey
                                    //                     .withOpacity(0.40),
                                    //                 value: _value,
                                    //                 interval: 20,
                                    //                 showTicks: false,
                                    //                 showLabels: false,
                                    //                 enableTooltip: false,
                                    //                 minorTicksPerInterval: 1,
                                    //                 onChanged:
                                    //                     (dynamic value) {
                                    //                   setState(() {
                                    //                     _value = value;
                                    //                   });
                                    //                 },
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         ),
                                    //       ),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Divider(),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(
                                    //             left: 20, right: 20),
                                    //         child: ExpandablePanel(
                                    //             header: Text(
                                    //               "Service Delivery",
                                    //               style: TextStyle(
                                    //                   fontSize: 20,
                                    //                   fontWeight:
                                    //                       FontWeight.w600),
                                    //             ),
                                    //             collapsed: SizedBox(
                                    //               height: 0,
                                    //             ),
                                    //             expanded: Column(
                                    //               children: [
                                    //                 Row(
                                    //                   children: [
                                    //                     Container(
                                    //                       height: 41,
                                    //                       width: 81,
                                    //                       decoration:
                                    //                           BoxDecoration(
                                    //                         border: Border.all(
                                    //                             color: Color(
                                    //                                 0xff777777),
                                    //                             width: 1),
                                    //                         borderRadius:
                                    //                             BorderRadius
                                    //                                 .circular(
                                    //                                     5),
                                    //                       ),
                                    //                       child: Center(
                                    //                           child: Text(
                                    //                         'Available',
                                    //                         style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400,
                                    //                           color: Color(
                                    //                               0xff777777),
                                    //                         ),
                                    //                       )),
                                    //                     ),
                                    //                     SizedBox(width: 10),
                                    //                     Container(
                                    //                       height: 41,
                                    //                       width: 81,
                                    //                       decoration:
                                    //                           BoxDecoration(
                                    //                         border: Border.all(
                                    //                             color: Color(
                                    //                                 0xff777777),
                                    //                             width: 1),
                                    //                         borderRadius:
                                    //                             BorderRadius
                                    //                                 .circular(
                                    //                                     5),
                                    //                       ),
                                    //                       child: Center(
                                    //                           child: Text(
                                    //                         'Unavailable',
                                    //                         style: TextStyle(
                                    //                           fontSize: 15,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .w400,
                                    //                           color: Color(
                                    //                               0xff777777),
                                    //                         ),
                                    //                       )),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //               ],
                                    //             )),
                                    //       ),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Divider(),
                                    //       SizedBox(
                                    //         height: 10,
                                    //       ),
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(
                                    //             left: 100, right: 100),
                                    //         child: Container(
                                    //           height: 44,
                                    //           width: double.infinity,
                                    //           decoration: BoxDecoration(
                                    //               color: ConstColors
                                    //                   .secondaryColor,
                                    //               borderRadius:
                                    //                   BorderRadius.circular(
                                    //                       5)),
                                    //           child: Center(
                                    //               child: Text("Apply",
                                    //                   style: TextStyle(
                                    //                       color: Colors.white,
                                    //                       fontSize: 17))),
                                    //         ),
                                    //       ),
                                    //       SizedBox(
                                    //         height: 20,
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),

                                    ));
                          },
                          child: Container(
                            height: 32,
                            width: 97,
                            decoration: BoxDecoration(
                              color: ConstColors.secondaryColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.filter_alt_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  "Fiter",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You may want to check this profiles first",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Container(
                                height: 76,
                                width: 76,
                                child: Image.asset(
                                  'assets/images/Kala.png',
                                  fit: BoxFit.fill,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Tobi Jahson",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xff777777)),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ConstColors.primaryColor,
                  ),
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Container(
                        width: 130,
                        child: Center(
                            child: Text(
                          "Map",
                          style: TextStyle(fontSize: 17),
                        )),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 130,
                        child: Center(
                            child: Text(
                          "Technician",
                          style: TextStyle(fontSize: 17),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 1430,
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Services Requested",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Oil Change- Synthetic Blend Engine Oil",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff777777),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Container(
                                    height: 500,
                                    width: double.infinity,
                                    child: Image.asset(
                                      'assets/images/Map.png',
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Container(
                                  height: 350,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffEAEAEA), width: 2),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Elite Auto Repair & Service Inc #2",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'No ratings available',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff777777)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "5.72 mi 5655 E Colonial Uniated State-2024",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff777777)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 26,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 124,
                                              width: 124,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Image.asset(
                                                "assets/images/Kala.png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.account_circle,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      "Tobi Johnson",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      "12km away",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.star,
                                                        size: 20,
                                                        color: Colors.amber),
                                                    Text(
                                                      "5 Stars",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        TechnicianProfile()));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Container(
                                              height: 44,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: ConstColors
                                                      .secondaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "View Profile",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  height: 297,
                                  width: double.infinity,
                                  child: Image.asset('assets/images/petrol.png',
                                      fit: BoxFit.fill),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Services Requested",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Oil Change- Synthetic Blend Engine Oil",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff777777),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEAEAEA), width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Oil Change",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 26,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 124,
                                            width: 124,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/images/Kala.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.account_circle,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "Tobi Johnson",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "12km away",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      size: 20,
                                                      color: Colors.amber),
                                                  Text(
                                                    "5 Stars",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              // SizedBox(
                                              //   height: 12,
                                              // ),
                                              // Row(
                                              //   children: [
                                              //     Icon(
                                              //       Icons.sell,
                                              //       size: 20,
                                              //     ),
                                              //     Text(
                                              //       "#1000/hr",
                                              //       style:
                                              //       TextStyle(fontSize: 17),
                                              //     )
                                              //   ],
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: ConstColors.secondaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "View Profile",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEAEAEA), width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Heating & Air Conditioning",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 26,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 124,
                                            width: 124,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/images/Kala.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.account_circle,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "Tobi Johnson",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "12km away",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      size: 20,
                                                      color: Colors.amber),
                                                  Text(
                                                    "5 Stars",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              // SizedBox(
                                              //   height: 12,
                                              // ),
                                              // Row(
                                              //   children: [
                                              //     Icon(
                                              //       Icons.sell,
                                              //       size: 20,
                                              //     ),
                                              //     Text(
                                              //       "#1000/hr",
                                              //       style:
                                              //       TextStyle(fontSize: 17),
                                              //     )
                                              //   ],
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: ConstColors.secondaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "View Profile",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                height: 297,
                                width: double.infinity,
                                child: Image.asset('assets/images/petrol.png',
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 0),
                              child: Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEAEAEA), width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Diagnosis/Describe Problem",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 26,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 124,
                                            width: 124,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/images/Kala.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.account_circle,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "Tobi Johnson",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "12km away",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                      size: 20,
                                                      color: Colors.amber),
                                                  Text(
                                                    "5 Stars",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              // SizedBox(
                                              //   height: 12,
                                              // ),
                                              // Row(
                                              //   children: [
                                              //     Icon(
                                              //       Icons.sell,
                                              //       size: 20,
                                              //     ),
                                              //     Text(
                                              //       "#1000/hr",
                                              //       style:
                                              //       TextStyle(fontSize: 17),
                                              //     )
                                              //   ],
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: ConstColors.secondaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "View Profile",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                      controller: _tabController,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
