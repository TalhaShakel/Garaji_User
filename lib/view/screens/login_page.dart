import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/components/bottom_bar.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:garaji_user_app/constants/const_images.dart';
import 'package:garaji_user_app/view/screens/forget_password/reset_password.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/signup_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'add_vehicle/about_vehicle/about_your_vehicle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsecurePassword = false;

  String countryCode = '';

  var phoneNumber = TextEditingController();

  final TextEditingController _pinPutController = TextEditingController();
  var _verificationCode;

  phoneauth() async {
    try {
      EasyLoading.show();
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber:
              //  "+923178825400",
              '${countryCode.toString().trim() + phoneNumber.text.trim().toString()}',
          verificationCompleted: (PhoneAuthCredential credential) async {
            print(1);
            await FirebaseAuth.instance
                .signInWithCredential(credential)
                .then((value) async {
              if (value.user != null) {
                Get.to(() => AboutVehicle());
              }
            });
            print(2);
          },
          verificationFailed: (FirebaseAuthException e) {
            print(e.message);
          },
          codeSent: (String verificationId, int? resendToken) {
            _verificationCode = verificationId;
            print(verificationId);
            print(resendToken);
            print(3);
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            _verificationCode = verificationId;
            print(verificationId);
            print(5);
          },
          timeout: Duration(seconds: 120));
      EasyLoading.dismiss();
    } catch (e) {
      EasyLoading.dismiss();

      print(e);
      Get.snackbar("$e", "error");
    }
  }

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
                padding: const EdgeInsets.only(top: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ConstImages.appLogo,
                      height: 90,
                    ),
                  ],
                ),
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
                              height: 20,
                            ),
                            Text(
                              "Welcome Back!",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "You will get best quality Gareji Shop",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    color: Color(0xff777777),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17),
                              ),
                            ),
                            Text(
                              "Car service with the low cost",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    color: Color(0xff777777),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17),
                              ),
                            ),
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
                                        print(c.dialCode);
                                      },
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: phoneNumber,
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
                                  child: Pinput(
                                    length: 6,
                                    // defaultPinTheme: defaultPinTheme,
                                    controller: _pinPutController,
                                    pinAnimationType: PinAnimationType.fade,
                                    onSubmitted: (pin) async {
                                      try {
                                        await FirebaseAuth.instance
                                            .signInWithCredential(
                                                PhoneAuthProvider.credential(
                                                    verificationId:
                                                        _verificationCode!,
                                                    smsCode: pin))
                                            .then((value) {
                                          if (value.user != null) {
                                            Get.to(() => AboutVehicle());
                                          }
                                        });
                                      } catch (e) {
                                        print(e);
                                      }
                                    },
                                  )
                                  // TextFormField(
                                  //   cursorColor: Colors.grey,
                                  //   obscureText: obsecurePassword,
                                  //   decoration: InputDecoration(
                                  //       hintText: "Password",
                                  //       suffixIcon: IconButton(
                                  //         padding: EdgeInsets.only(right: 16),
                                  //         onPressed: () {
                                  //           setState(() {
                                  //             obsecurePassword =
                                  //                 !obsecurePassword;
                                  //           });
                                  //         },
                                  //         icon: obsecurePassword
                                  //             ? Icon(
                                  //                 Icons.visibility_off,
                                  //                 color: Color(0xffB8B8B8),
                                  //               )
                                  //             : Icon(
                                  //                 Icons.visibility,
                                  //                 color: ConstColors.primaryColor,
                                  //               ),
                                  //       ),
                                  //       border: InputBorder.none),
                                  // ),
                                  ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResetPassword()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Forgot Password?",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Color(0xff27AE60),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () async {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => AboutVehicle()));
                                try {
                                  await phoneauth();
                                  // Get.to(() => AboutVehicle());
                                } catch (e) {
                                  Get.snackbar("$e", "");
                                  print(e);
                                }
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                margin: EdgeInsets.only(left: 30, right: 30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0xffFF7D01),
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign In",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    ),
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
                              height: 120,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don’t have an account?",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Color(0xff3C3D3F),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    " Create new",
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
