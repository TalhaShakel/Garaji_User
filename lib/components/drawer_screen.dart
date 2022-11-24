import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/constants/const_images.dart';
import 'package:garaji_user_app/view/screens/Maintanence/schedule.dart';
import 'package:garaji_user_app/view/screens/Profile/my_profile.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/about_vehicle/about_your_vehicle.dart';
import 'package:garaji_user_app/view/screens/conditions.dart';
import 'package:garaji_user_app/view/screens/login_page.dart';
import 'package:garaji_user_app/view/screens/privacy.dart';
import 'package:garaji_user_app/view/screens/privacy_policy.dart';
import 'package:garaji_user_app/view/screens/vehicles.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/const_colors.dart';
import '../view/screens/notifications.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  String defaultvalue2 = "";
  List dropDownlistData2 = [
    {"title": "English", "value": "1 Year Ticket"},
    {"title": "Spanish", "value": "1 Week Ticket"},
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xffF1F1F1),
              height: 130,
              child: DrawerHeader(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyProfile()));
                },
                child: Row(
                  children: [
                    Image.asset(
                      ConstImages.profilePic,
                      height: 70,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${currentUserData.fullName}",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Color(0xff3C3D3F),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Text(
                          "${currentUserData.userEmail}",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Color(0xff3C3D3F),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vehicles()));
              },
              leading: Image.asset(
                "assets/images/carIcon.png",
                height: 35,
                color: ConstColors.primaryColor,
              ),
              title: Text(
                "Vehicles",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff3C3D3F),
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // ListTile(
            //   leading: Image.asset("assets/images/msgIcon.png",height: 30,color: ConstColors.primaryColor,),
            //   title: Text("Messages",style: GoogleFonts.roboto(
            //       textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 17,fontWeight: FontWeight.w500)
            //   ),),
            // ),
            // ListTile(
            //   leading: Image.asset("assets/images/profileIcon.png",height: 30,color: ConstColors.primaryColor,),
            //   title: Text("Profile",style: GoogleFonts.roboto(
            //       textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 17,fontWeight: FontWeight.w500)
            //   ),),
            // ),
            // InkWell(
            //   onTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
            //   },
            //   child: ListTile(
            //     leading: Image.asset("assets/images/notificationIcon.png",height: 30,color: ConstColors.primaryColor,),
            //     title: Text("Notification",style: GoogleFonts.roboto(
            //         textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 17,fontWeight: FontWeight.w500)
            //     ),),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 20),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                    iconDisabledColor: Color(0xff8B9EB0),
                    iconEnabledColor: Color(0xff8B9EB0),
                    isExpanded: true,
                    isDense: true,
                    value: defaultvalue2,
                    onChanged: (value) {
                      setState(() {
                        print("selected value $value");
                        defaultvalue2 = value!;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/langIcon.png",
                                  height: 30,
                                  color: ConstColors.primaryColor,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Language",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff3C3D3F),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            )),
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
                            value: data['value']);
                      }).toList(),
                    ]),
              ),
            ),
            // InkWell(
            //   onTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedule()));
            //   },
            //   child: ListTile(
            //     leading: Image.asset("assets/images/scheduleIcon.png",height: 30,color: ConstColors.primaryColor,),
            //     title: Text("Scheduled maintenance",style: GoogleFonts.roboto(
            //         textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 17,fontWeight: FontWeight.w500)
            //     ),),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Divider(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrivacyPolicy()));
              },
              child: ListTile(
                leading: Image.asset(
                  "assets/images/privacyIcon.png",
                  height: 30,
                  color: ConstColors.primaryColor,
                ),
                title: Text(
                  "Privacy Policy",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Color(0xff3C3D3F),
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Conditions()));
              },
              leading: Image.asset(
                "assets/images/termsIcon.png",
                height: 30,
                color: ConstColors.primaryColor,
              ),
              title: Text(
                "Terms & Conditions",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff3C3D3F),
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            GestureDetector(
              onTap: () {
                fAuth.signOut();
                Get.to(() => LoginPage());
              },
              child: ListTile(
                leading: Image.asset(
                  "assets/images/logoutIcon.png",
                  height: 30,
                  color: ConstColors.primaryColor,
                ),
                title: Text(
                  "Log Out",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Color(0xff3C3D3F),
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
