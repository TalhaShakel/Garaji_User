import 'package:flutter/material.dart';
import 'package:garaji_user_app/components/bottom_bar.dart';
import 'package:garaji_user_app/view/screens/by_make_1.dart';
import 'package:google_fonts/google_fonts.dart';
class ByMake extends StatefulWidget {
  const ByMake({Key? key}) : super(key: key);

  @override
  State<ByMake> createState() => _ByMakeState();
}

class _ByMakeState extends State<ByMake> {
  String defaultvalue2 = "";
  List dropDownlistData2 = [
    {"title": "2020", "value": "1 Year Ticket"},
    {"title": "2021", "value": "1 Week Ticket"},
    {"title": "2022", "value": "1 Day Ticket"},
    {"title": "2019", "value": "2"},
    {"title": "2018", "value": "3"},
    {"title": "2017", "value": "4"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Select your vehicle’s year",style: GoogleFonts.roboto(
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ByMake1()));
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
    );
  }
}

