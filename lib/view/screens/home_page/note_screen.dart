import 'package:flutter/material.dart';
import 'package:garaji_user_app/components/bottom_bar.dart';
import 'package:garaji_user_app/view/screens/home_page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 60,),
              Container(
                color: Color(0xffF1F1F1),
                child: ListTile(
                  title: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Notes for Technician",style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 18),
                      ),),
                    ),
                  ),
                  trailing: Icon(Icons.close),
                ),
              ),
              SizedBox(height: 40,),
              Text("Please provide any notes about the issue that \nmay help the technician with your Oil Change-",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Color(0xffBBBBBB),fontWeight: FontWeight.w500,fontSize: 17),
              ),),
              Text("Synthetic Blend Engine Oil",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Color(0xffBBBBBB),fontWeight: FontWeight.w500,fontSize: 17),
              ),),
              SizedBox(height: 30,),
              Container(
                height: 224,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xffEAEAEA)),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextFormField(
                    cursorColor: Color(0xffBBBBBB),
                    decoration: InputDecoration(
                      hintText: "Optional",
                      hintStyle:  GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xffBBBBBB),fontWeight: FontWeight.w500,fontSize: 17),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 200,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));

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
      ),
    );
  }
}
