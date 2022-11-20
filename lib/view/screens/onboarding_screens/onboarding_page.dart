import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/login_page.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/screen_1.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/screen_2.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/screen_3.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/screen_4.dart';
import 'package:garaji_user_app/view/screens/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _pageController = PageController();
  bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                lastpage = (index == 3);
              });
            },
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
          Align(alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                        effect: ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          spacing: 8,
                          activeDotColor: Color(0xffFF7D01),
                          dotColor: Colors.grey,
                        ),
                        controller: _pageController, count: 4)
                  ],
                ),
              ),
            ),
          ),
          Positioned(bottom: 35,right: 25,
            child: lastpage?
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Center(
                child: Text("Start",style: GoogleFonts.roboto(
                    color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w500
                ),),
              ),
            ) : InkWell(
              onTap: (){
                _pageController.nextPage(duration: Duration(milliseconds: 500), curve:Curves.easeIn);
              },
              child: Center(
                child: Text("Next",style: GoogleFonts.roboto(
                    color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w500
                ),),
              ),
            ),
          ),
          Positioned(bottom: 35,left: 25,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Text("Skip",style: GoogleFonts.roboto(
                  color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w500
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
