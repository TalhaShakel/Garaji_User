import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_images.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_colors.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(ConstImages.onBoarding3,height: MediaQuery.of(context).size.height * 0.65,width: double.infinity,),
            SizedBox(height: 40,),
            Text("Simplicity",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
            ),),
            SizedBox(height: 17,),
            Text("It has never been simpler to take care of your car",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 17,letterSpacing: -0.6),
            ),),
          ],
        ),
        
      ),
    );
  }
}
