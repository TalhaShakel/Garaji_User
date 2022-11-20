import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:garaji_user_app/view/screens/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool obsecurePassword = false;
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
              SizedBox(height: 45,),
              Text("New Password",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 30),
              ),),
              SizedBox(height: 12,),
              Text("Enter password to complete",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),
              ),),
              Text("Sign up process",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 41),
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
                            SizedBox(height: 45,),
                            Container(
                              height: 52,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30,right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(color: ConstColors.borderColor)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 18.0,top: 4),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  obscureText: obsecurePassword,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      suffixIcon: IconButton(
                                        padding: EdgeInsets.only(right: 16),
                                        onPressed: () {
                                          setState(() {
                                            obsecurePassword = !obsecurePassword;
                                          });
                                        },
                                        icon: obsecurePassword
                                            ? Icon(
                                          Icons.visibility_off,
                                          color: Color(0xffB8B8B8),
                                        )
                                            : Icon(
                                          Icons.visibility,
                                          color: ConstColors.primaryColor,
                                        ),
                                      ),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 52,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30,right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(color: ConstColors.borderColor)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 18.0,top: 4),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  obscureText: obsecurePassword,
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
                                      suffixIcon: IconButton(
                                        padding: EdgeInsets.only(right: 16),
                                        onPressed: () {
                                          setState(() {
                                            obsecurePassword = !obsecurePassword;
                                          });
                                        },
                                        icon: obsecurePassword
                                            ? Icon(
                                          Icons.visibility_off,
                                          color: Color(0xffB8B8B8),
                                        )
                                            : Icon(
                                          Icons.visibility,
                                          color: ConstColors.primaryColor,
                                        ),
                                      ),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 35,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>StartScreen()));
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
                                  child: Text("Confirm Now",style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
