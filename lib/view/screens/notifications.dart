import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColors.primaryColor,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: Text("Notifications",style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w600,fontSize: 30),
        ),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Today",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 18),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 85,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0.1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Audi car",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 17),
                          ),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Just now",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Your car has been successfully Booked.",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("Yesterday",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 18),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 85,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.1
                      )
                    ]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Audi car",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 17),
                          ),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Just now",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Your car has been successfully Booked.",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 85,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.1
                      )
                    ]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Audi car",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 17),
                          ),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Just now",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Your car has been successfully Booked.",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text("July, 12,2022",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 18),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 85,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.1
                      )
                    ]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Audi car",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 17),
                          ),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Just now",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Your car has been successfully Booked.",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 85,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.1
                      )
                    ]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Audi car",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 17),
                          ),),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Just now",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Your car has been successfully Booked.",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xffACB2B8),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
