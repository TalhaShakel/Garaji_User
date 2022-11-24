import 'package:flutter/material.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:garaji_user_app/view/screens/Profile/edit_profile.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_images.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: ConstColors.primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Profile",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 26),
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EditProfile()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Icon(
                                    Icons.edit_road,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 110.0),
                          child: Image.asset(
                            ConstImages.profilePic,
                            height: 137,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${currentUserData.fullName}",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xff3C3D3F),
                        fontWeight: FontWeight.w500,
                        fontSize: 28),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "User Information",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(0xff3C3D3F),
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Omar faruk jon is a Urology Surgeon in Car Shop and is \naffiliated with the multiple Bazar in the area.",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(0xff777777),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              letterSpacing: -0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff3C3D3F),
                        size: 18,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "United Kingdom (12km away)",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(0xff3C3D3F),
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: Color(0xff3C3D3F),
                        size: 18,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "100% hire rate.",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(0xff3C3D3F),
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 350,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ConstColors.secondaryColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Image.asset(
                        "assets/images/carIcon.png",
                        height: 98,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 26,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Year : 02",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 26,
                            width: 111,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Model : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 26,
                            width: 119,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Brand : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 26,
                            width: 139,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Sub model : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 26,
                            width: 139,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Sub model : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(width: 10,),
                          Container(
                            height: 26,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Transmicion Type : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      letterSpacing: -0.3),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 26,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Engine Liters or Electric : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 26,
                            width: 93,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Vn : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 26,
                            width: 279,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white54),
                            child: Center(
                              child: Text(
                                "Turbo,non turbo or super charge : Acura",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
