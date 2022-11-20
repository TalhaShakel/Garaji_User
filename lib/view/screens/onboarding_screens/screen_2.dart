import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_images.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('assets/images/paper.png',height: MediaQuery.of(context).size.height * 0.65,width: double.infinity),
            SizedBox(height: 40,),
            Text("Filter",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
            ),),
            SizedBox(height: 17,),
            Text("Narrow your search by filtering the exact service \n                                   that you need",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 17,letterSpacing: -0.6),
            ),),
          ],
        ),

      ),
    );
  }
}
