import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_vehicle/request_services.dart';

class AddFinal extends StatelessWidget {
  const AddFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset("assets/images/exportScreen.png"),
              SizedBox(height: 35,),
              Text("Successfully your add",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
              ),),
              SizedBox(height: 20,),
              Text("You’ve successfully created your Gareji shop \naccount, Kindly click the button below to \ncomplete your account set up and get started",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 17),
              ),),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestServices()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 30,right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xffFF7D01),
                  ),
                  child: Center(
                    child: Text("Technician",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),
                    ),),
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
