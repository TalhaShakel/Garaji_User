import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/forget_password/new_password.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../../constants/const_colors.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  TextEditingController _pin=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.arrow_back_ios,color: Colors.white,),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Text("Authentication",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 30),
                      ),),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Text("Check your SMS messages. We've send",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),
              ),),
              Text("you the PIN at (+88) 012 345 678",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
                          color: Colors.white
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 35,),
                            Pinput(
                              controller: _pin,
                              defaultPinTheme: PinTheme(
                                height: 90,
                                width: 56,
                                decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(color: Color(0xffEAEAEA)),
                                ),
                                // color: Colors.grey
                              ),
                              focusedPinTheme: PinTheme(
                                  height: 90,
                                  width: 56,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(80),
                                      border: Border.all(color: Color(0xffEAEAEA))
                                  )
                              ),
                              submittedPinTheme: PinTheme(
                                height: 90,
                                width: 56,
                                decoration:  BoxDecoration(
                                    color: Colors.red.shade200.withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(80)
                                ),
                              ),
                              length: 4,
                            ),
                            SizedBox(height: 35,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPassword()));
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
                                  child: Text("Verify",style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),
                                  ),),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("Didn't receive any code?",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Color(0xff777777),fontSize: 15,fontWeight: FontWeight.w500)
                            ),),
                            SizedBox(height: 4,),
                            Text("Resend code",style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Color(0xff2F80ED),fontSize: 15,fontWeight: FontWeight.w400)
                            ),)
                          ],
                        ),
                      ),
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
