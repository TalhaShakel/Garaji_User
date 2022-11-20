import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset("assets/images/mapsicleMap.png",width: double.infinity,height: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(top: 50.0,left: 40),
              child: Icon(Icons.arrow_back_ios,color: Colors.black,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: double.infinity,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Image.asset("assets/images/lineLogo.png",width: 45,),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Row(
                            children: [
                              Text("Request Confirmed",style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Color(0xff0F0039),fontWeight: FontWeight.w700,fontSize: 20),
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Row(
                            children: [
                              Text("Gareji Shop has accepted your request. Tobi \nis about to start moving..",style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Color(0xff5F547C),fontWeight: FontWeight.w400,fontSize: 16),
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 24,),
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0,right: 22),
                          child: Image.asset("assets/images/Group.png"),
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/images/person.png",height: 48,),
                                SizedBox(height: 5,),
                                Text("Tobi",style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 16),
                                ),),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("assets/images/cross.png",height: 48,),
                                SizedBox(height: 5,),
                                Text("Cancel",style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 16),
                                ),),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 24,),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        ListTile(
                          leading: Image.asset("assets/images/profileIcon.png",height: 24,),
                          title: Text("A122, Ife/Ibadan Express way, \nGbongan ",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff0F0039),fontWeight: FontWeight.w400,fontSize: 16),
                          ),),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(Icons.edit,color: Color(0xff0F0039),),
                          ),
                        ),
                        SizedBox(height: 6,),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
