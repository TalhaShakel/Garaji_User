import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obsecurePassword = false;
  String countryCode = '';
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
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "        Enter info registration",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 41),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35)),
                          color: Colors.white),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 52,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(
                                      color: ConstColors.borderColor)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 18.0, top: 4),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                      hintText: "Full Name",
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 52,
                                width: double.infinity,
                                margin: EdgeInsets.only(left: 30, right: 30),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    border: Border.all(
                                        color: ConstColors.borderColor)),
                                child: Row(
                                  children: [
                                    CountryCodePicker(
                                      initialSelection: 'PK',
                                      showFlag: true,
                                      showFlagDialog: true,
                                      showOnlyCountryWhenClosed: false,
                                      showCountryOnly: false,
                                      alignLeft: false,
                                      showDropDownButton: true,
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                      onInit: (c) {
                                        countryCode = c!.dialCode!;
                                      },
                                      onChanged: (c) {
                                        setState(() {
                                          countryCode = c.dialCode!;
                                        });
                                        print(c.code);
                                      },
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.phone,
                                        cursorColor: Colors.grey,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 52,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(
                                      color: ConstColors.borderColor)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 18.0, top: 4),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 52,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(
                                      color: ConstColors.borderColor)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 18.0, top: 4),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  obscureText: obsecurePassword,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      suffixIcon: IconButton(
                                        padding: EdgeInsets.only(right: 16),
                                        onPressed: () {
                                          setState(() {
                                            obsecurePassword =
                                                !obsecurePassword;
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
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 52,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  border: Border.all(
                                      color: ConstColors.borderColor)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 18.0, top: 4),
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  obscureText: obsecurePassword,
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
                                      suffixIcon: IconButton(
                                        padding: EdgeInsets.only(right: 16),
                                        onPressed: () {
                                          setState(() {
                                            obsecurePassword =
                                                !obsecurePassword;
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
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xffFF7D01),
                              ),
                              child: Center(
                                child: Text(
                                  "Register",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Or",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    color: Color(0xff0B1D6F),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 51,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                          color: ConstColors.borderColor),
                                      color: Colors.white),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/fb.png",
                                        height: 18,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "facebook",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              color: Color(0xff3C3D3F),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 51,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                          color: ConstColors.borderColor),
                                      color: Colors.white),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/Google.png",
                                        height: 18,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Google",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              color: Color(0xff3C3D3F),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Have an account?",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff3C3D3F),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    " Log In",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: ConstColors.primaryColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
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
