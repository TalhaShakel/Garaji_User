import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/forget_password/authentication_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
              SizedBox(height: 52,),
              Text("Reset Password",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30),
              ),),
              SizedBox(height: 52,),
              Image.asset("assets/images/bannerReset.png",height: 303,),
              SizedBox(height: 35,),
              Text("Please Enter Your Phone or Email Address To",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 17),
              ),),
              Text("Resieve a Verification code",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 17),
              ),),
              SizedBox(height: 35,),
              Container(
                height: 107,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xffFF7D01)),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 40,),
                    Image.asset("assets/images/mobileIcon.png"),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        SizedBox(height: 25,),
                        Text("Via Phone:",style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 15),
                        ),),
                        SizedBox(height: 5,),
                        Text("+923038540852",style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w500,fontSize: 18),
                        ),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 14,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthenticationScreen()));
                },
                child: Container(
                  height: 107,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0.1
                      )
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 40,),
                      Image.asset("assets/images/mailIcon.png",height: 24,),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          SizedBox(height: 25,),
                          Text("Via Email:",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w400,fontSize: 15),
                          ),),
                          SizedBox(height: 5,),
                          Text("hassan420@gmail.com",style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w500,fontSize: 18),
                          ),),
                        ],
                      )
                    ],
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
