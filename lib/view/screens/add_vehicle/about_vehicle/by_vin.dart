import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:garaji_user_app/view/screens/byVin2.dart';
import 'package:google_fonts/google_fonts.dart';

class ByVin extends StatelessWidget {
  const ByVin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Text("Please enter your zip code so that we can find you local estimates.",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Color(0xff777777),fontSize: 17,fontWeight: FontWeight.w500)
            ),),
          ),
          SizedBox(height: 25,),
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Color(0xffEAEAEA)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: TextFormField(
                  cursorColor: Color(0xff777777),
                  decoration: InputDecoration(
                      hintText: "17 Digit Identifier",
                      hintStyle: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xffB8B8B8),fontWeight: FontWeight.w400,fontSize: 15),
                      ),
                      border: InputBorder.none,
                      prefixText: "VIN:  ",
                      prefixStyle: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w400,fontSize: 15),
                      ),
                      suffixIcon: Icon(Icons.camera_alt_rounded,size: 18,),
                      suffixIconColor: Color(0xff777777)
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15),
            child: Text("You VIN enables Openbay’s mechanics to identify engine type tire size and other specific part details for quoting service. (locaterd bottom driver’s side winshield & doorjamb.",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Color(0xffBBBBBB),fontSize: 13,fontWeight: FontWeight.w500)
            ),),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ByVin2()));
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
                child: Text("Continue",style: GoogleFonts.roboto(
                  textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ZipCode extends StatelessWidget {
  const ZipCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: 145,
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
                  textStyle: TextStyle(color: ConstColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 17),
                ),),
                SizedBox(height:10,),
                Text("",style: GoogleFonts.roboto(
                  textStyle: TextStyle(color: ConstColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 15),
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
