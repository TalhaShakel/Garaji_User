import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/const_colors.dart';
import 'by_make.dart';
import 'by_vin.dart';

class AboutVehicle extends StatelessWidget {
  const AboutVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
          title: Text("Tell us about your vehicle",style: GoogleFonts.roboto(
            textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),
          ),),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.1,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Container(
                  margin: EdgeInsets.only(left: 30,right: 30),
                  child: TabBar(
                    indicatorColor: ConstColors.secondaryColor,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ConstColors.secondaryColor
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                            width: 100,
                            child: Center(child: Text("By Make"))),
                      ),
                      Tab(
                        child: Container(
                            width: 100,
                            child: Center(child: Text("By VIN"))),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.7,
                  child: TabBarView(
                    children: [
                      ByMake(),
                      ByVin(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
