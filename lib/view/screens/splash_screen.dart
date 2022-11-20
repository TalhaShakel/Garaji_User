import 'dart:async';

import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_images.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/onboarding_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/const_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingPage()));
    }
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ConstImages.appLogo,height: 155,),
            SizedBox(height: 30,),
            Text("Gareji Shop",style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.w800)
            ),)
          ],
        ),
      ),
    );
  }
}
