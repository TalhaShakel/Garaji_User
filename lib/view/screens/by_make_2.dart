import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:garaji_user_app/view/screens/by_make_3.dart';
import 'package:google_fonts/google_fonts.dart';
class ByMake2 extends StatefulWidget {
  const ByMake2({Key? key}) : super(key: key);

  @override
  State<ByMake2> createState() => _ByMake2State();
}

class _ByMake2State extends State<ByMake2> {
  String defaultvalue2 = "";
  List dropDownlistData2 = [
    {"title": "ILX", "value": "1 Year Ticket"},
    {"title": "MDX", "value": "1 Week Ticket"},
    {"title": "NSX", "value": "1 Day Ticket"},
    {"title": "RDX", "value": "2"},
    {"title": "RLX", "value": "3"},
    {"title": "TLX", "value": "4"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
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
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text("By Make",style: TextStyle(
                fontSize: 22,color: ConstColors.secondaryColor,fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(20),
              child:   Image.asset('assets/images/cars.png'),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Select your vehicle’s model",style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Color(0xff777777),fontSize: 17,fontWeight: FontWeight.w500)
                  ),),
                ),
              ],
            ),
            SizedBox(height: 13,),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Color(0xffEAEAEA)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 20),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        iconDisabledColor: Color(0xff8B9EB0),
                        iconEnabledColor: Color(0xff8B9EB0),
                        isExpanded: true,
                        isDense: true,
                        value: defaultvalue2,
                        onChanged: (value) {
                          setState(() {
                            print("selected value $value");
                            defaultvalue2 = value!;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Please Select",
                                style: TextStyle(
                                    color: Colors.grey),
                              ),
                            ),
                            value: "",
                          ),
                          ...dropDownlistData2
                              .map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem<String>(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    data['title'],
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                value: data['value']);
                          }).toList(),
                        ]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ByMake3()));
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
                  child: Text("Submit",style: GoogleFonts.roboto(
                    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
