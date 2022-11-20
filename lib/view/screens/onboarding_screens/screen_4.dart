import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_images.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/oil.png",height: MediaQuery.of(context).size.height * 0.65,width: double.infinity),
            SizedBox(height: 40,),
            Text("Contact",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
            ),),
            SizedBox(height: 17,),
            Text("Chat through the app or call directly",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 17),
            ),),
          ],
        ),

      ),
    );
  }
}
