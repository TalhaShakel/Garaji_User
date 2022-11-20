import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/const_colors.dart';

class TechnicianProfile extends StatelessWidget {
  const TechnicianProfile({Key? key}) : super(key: key);

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
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            color: ConstColors.primaryColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap:(){ Navigator.pop(context);},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Icon(
                                    Icons.arrow_back_ios,color: Colors.white,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text("Technician Profile",style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w500,fontSize: 26),
                              ),),
                              Spacer(),
                            ],
                          ),
                        )
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 110.0),
                          child: Image.asset("assets/images/tecProfile.png",height: 137,),
                        )),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Omar Faruk",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 28),
                    ),),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/tickLogo.png",height: 22,),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star,color: Color(0xffE2B93B),size: 16,),
                    SizedBox(width: 6,),
                    Text("5(12) Top Rated",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xffE2B93B),fontWeight: FontWeight.w400,fontSize: 17),
                    ),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Video.png",height: 52,),
                    SizedBox(width: 7,),
                    Image.asset("assets/images/share.png",height: 52,),
                    SizedBox(width: 7,),
                    Image.asset("assets/images/Chat.png",height: 52,),
                    SizedBox(width: 7,),
                    Image.asset("assets/images/person1.png",height: 52,),
                  ],
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Location",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 18),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Image.asset("assets/images/littleMap.png",height: 190,width: double.infinity,),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Technician Information",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 18),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Technician jon is a Urology Surgeon in Car Shop and is \naffiliated with the multiple Bazar in the area.",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 15,letterSpacing: -0.5),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on,color: Color(0xff3C3D3F),size: 18,),
                      SizedBox(width: 12,),
                      Text("United Kingdom (12km away)",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.bookmark,color: Color(0xff3C3D3F),size: 18,),
                      SizedBox(width: 12,),
                      Text("100% hire rate.",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.call,color: Color(0xff3C3D3F),size: 18,),
                      SizedBox(width: 12,),
                      Text("No : +923038540852",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.watch_later,color: Color(0xff3C3D3F),size: 18,),
                      SizedBox(width: 12,),
                      Text("8 AM - 5 AM",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_today_outlined,color: Color(0xff3C3D3F),size: 18,),
                      SizedBox(width: 12,),
                      Text("Service delivery : available/available not",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.amber,size: 18,),
                      SizedBox(width: 12,),
                      Text("5 Stars(10)",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Total Ratings (4.7)",style: GoogleFonts.inter(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w600,fontSize: 16),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 14,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Portfolio",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 16),
                      ),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text("See All",style: GoogleFonts.inter(
                        textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 13),
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/Cold.png",height: 110,),
                      Image.asset("assets/images/Cold1.png",height: 110,),
                      Image.asset("assets/images/Cold3.png",height: 110,),
                      Image.asset("assets/images/Cold2.png",height: 110,),
                    ],
                  ),
                ),
                SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("User Reviews",style: GoogleFonts.inter(
                        textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w500,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 157,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xffEAEAEA)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Image.asset("assets/images/Ellipse.png",height: 36,),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Text("khandokar Rasel",style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w600,fontSize: 16),
                              ),),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Color(0xffE2B93B),size: 15,),
                                  Icon(Icons.star,color: Color(0xffE2B93B),size: 15,),
                                  Icon(Icons.star,color: Color(0xffE2B93B),size: 15,),
                                  Icon(Icons.star,color: Color(0xffE2B93B),size: 15,),
                                  Icon(Icons.star,color: Color(0xffE2B93B),size: 15,),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),

                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text("Dec 24,2022",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 13),
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text("I’m really thankful to Gumoh Brian for this \nnice treatment and friendly behavior. \nAbsolutely he is a best and feborite maker.",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 15),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Customer Feedback",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text("Review",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w500,fontSize: 17),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 102,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffEAEAEA)),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      cursorColor: Color(0xffEAEAEA),
                      decoration: InputDecoration(
                          hintText: "Review",
                          hintStyle:  GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffbbbbbb),fontWeight: FontWeight.w500,fontSize: 17),
                          ),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 144,
                      margin: EdgeInsets.only(left: 30,right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffFF7D01),
                      ),
                      child: Center(
                        child: Text("Submit",style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),
                        ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
