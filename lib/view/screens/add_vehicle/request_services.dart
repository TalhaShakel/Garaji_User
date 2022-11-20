import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/about_vehicle/about_your_vehicle.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestServices extends StatelessWidget {
  const RequestServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Text("Request Services",style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
        ),),
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
              SizedBox(height: 50,),
              Text("Select a vehicle to service",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
              ),),
              SizedBox(height: 30,),
              Container(
                height: 116,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF1F1F1),
                  border: Border.all(color: Color(0xffEAEAEA))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Image.asset("assets/images/carLogo.png",height: 30,),
                    SizedBox(height:15,),
                    Text("2019 BMW 330i",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 116,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF1F1F1),
                  border: Border.all(color: Color(0xffEAEAEA))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Image.asset("assets/images/carLogo1.png",height: 30,),
                    SizedBox(height:15,),
                    Text("2018 Chevrolet Equinox",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutVehicle()));
                },
                child: Container(
                  height: 64,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF1F1F1),
                      border: Border.all(color: Color(0xffFF7D01))
                  ),
                  child: Center(
                    child: Text("+ Add a vehicle",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xffFF7D01),fontWeight: FontWeight.w500,fontSize: 17),
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
