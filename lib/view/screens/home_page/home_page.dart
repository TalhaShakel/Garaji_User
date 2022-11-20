import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_images.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/drawer_screen.dart';
import 'oil_change.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 8,bottom: 8),
          child: Image.asset(ConstImages.profilePic),
        ),
        title: Text("Omar faruk",style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 17,fontWeight: FontWeight.w500)
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Icon(Icons.search,color: Color(0xff3C3D3F)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu_outlined,
                  color: Color(0xff3C3D3F),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Icon(Icons.notifications,color: Color(0xff3C3D3F)),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text("Select your services",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 28,fontWeight: FontWeight.w600)
                  ),),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text("Popular Services",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 22,fontWeight: FontWeight.w600)
                  ),),
                ],
              ),
              SizedBox(height: 25,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> OilChange()));
                      },
                      child: Container(
                        height: 133,
                        width: 118,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Color(0xffEAEAEA)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Image.asset("assets/images/carIcon.png",height: 40,width: 40,),
                            SizedBox(height: 25,),
                            Text("Oil Change",style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 15,fontWeight: FontWeight.w500)
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 133,
                      width: 118,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xffEAEAEA)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset("assets/images/carIcon.png",height: 40,width: 40,),
                          SizedBox(height: 25,),
                          Text("Gener",style: GoogleFonts.inter(
                              textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 15,fontWeight: FontWeight.w500)
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      height: 133,
                      width: 118,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xffEAEAEA)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset("assets/images/carIcon.png",height: 40,width: 40,),
                          SizedBox(height: 25,),
                          Text("Brake Pads",style: GoogleFonts.inter(
                              textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 15,fontWeight: FontWeight.w500)
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 133,
                      width: 118,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xffEAEAEA)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset("assets/images/carIcon.png",height: 40,width: 40,),
                          SizedBox(height: 25,),
                          Text("Oil Change",style: GoogleFonts.inter(
                              textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 15,fontWeight: FontWeight.w500)
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      height: 133,
                      width: 118,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xffEAEAEA)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset("assets/images/carIcon.png",height: 40,width: 40,),
                          SizedBox(height: 25,),
                          Text("Oil Change",style: GoogleFonts.inter(
                              textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 15,fontWeight: FontWeight.w500)
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      height: 133,
                      width: 118,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xffEAEAEA)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset("assets/images/carIcon.png",height: 40,width: 40,),
                          SizedBox(height: 25,),
                          Text("Oil Change",style: GoogleFonts.inter(
                              textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 15,fontWeight: FontWeight.w500)
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffEAEAEA)),
                  color: Colors.white
                ),
                child: Center(
                  child: Text("Google Adds",style: GoogleFonts.quicksand(
                    textStyle: TextStyle(color: Color(0xff777777),fontWeight: FontWeight.w600,fontSize: 25),
                  ),),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Service Catelog",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 22,fontWeight: FontWeight.w600)
                    ),),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text("See All",style: GoogleFonts.inter(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 15,fontWeight: FontWeight.w400)
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Container(
                  height: 38,
                  width: 38,
                  color: Color(0xffF7F9FC),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0,right: 3),
                    child: Image.asset("assets/images/carIcon.png"),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Brakes",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff5F5F5F),fontSize: 17,fontWeight: FontWeight.w500)
                  ),),
                ),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),
              SizedBox(height: 5,),
              ListTile(
                leading: Container(
                  height: 38,
                  width: 38,
                  color: Color(0xffF7F9FC),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0,right: 3),
                    child: Image.asset("assets/images/carIcon.png"),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Electrical",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff5F5F5F),fontSize: 17,fontWeight: FontWeight.w500)
                  ),),
                ),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),
              SizedBox(height: 5,),
              ListTile(
                leading: Container(
                  height: 38,
                  width: 38,
                  color: Color(0xffF7F9FC),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0,right: 3),
                    child: Image.asset("assets/images/carIcon.png"),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Engine",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff5F5F5F),fontSize: 17,fontWeight: FontWeight.w500)
                  ),),
                ),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),
              SizedBox(height: 5,),
              ListTile(
                leading: Container(
                  height: 38,
                  width: 38,
                  color: Color(0xffF7F9FC),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0,right: 3),
                    child: Image.asset("assets/images/carIcon.png"),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Exhaust",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff5F5F5F),fontSize: 17,fontWeight: FontWeight.w500)
                  ),),
                ),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),
              SizedBox(height: 5,),
              ListTile(
                leading: Container(
                  height: 38,
                  width: 38,
                  color: Color(0xffF7F9FC),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0,right: 3),
                    child: Image.asset("assets/images/carIcon.png"),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Heating & Air Conditioning",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff5F5F5F),fontSize: 17,fontWeight: FontWeight.w500)
                  ),),
                ),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),
              SizedBox(height: 5,),
              ListTile(
                leading: Container(
                  height: 38,
                  width: 38,
                  color: Color(0xffF7F9FC),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0,right: 3),
                    child: Image.asset("assets/images/carIcon.png"),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Maintenance",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff5F5F5F),fontSize: 17,fontWeight: FontWeight.w500)
                  ),),
                ),
                trailing: Icon(Icons.arrow_forward_ios,size: 16,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
