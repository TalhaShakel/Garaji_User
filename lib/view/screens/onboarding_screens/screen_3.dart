import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_images.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('assets/images/review.png',height: MediaQuery.of(context).size.height * 0.65,width: double.infinity),
            SizedBox(height: 40,),
            Text("Review",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
            ),),
            SizedBox(height: 17,),
            Text("Review profiles and choose your best options",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 17,letterSpacing: -0.5),
            ),),
          ],
        ),

      ),
    );
  }
}
