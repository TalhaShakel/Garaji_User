import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/home_page/note_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OilChange extends StatelessWidget {
  const OilChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Color(0xff3C3D3F),size: 16,),
        title: Text("Oil Change",style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 18),
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
              SizedBox(height: 30,),
              Text("Preferred Oil Type",style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Color(0xff3C3D3F),fontWeight: FontWeight.w500,fontSize: 18),
              ),),
              SizedBox(height: 30,),
              Container(height: 52,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffEAEAEA),),
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Center(
                    child: TextFormField(
                      cursorColor: Color(0xffBBBBBB),
                      decoration: InputDecoration(
                        hintText: "Synthetic oil",
                        hintStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Color(0xffBBBBBB)
                          ),
                        ),
                        suffixIcon: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotesScreen()));
                            },
                            child: Icon(Icons.arrow_forward_ios,color: Color(0xffBBBBBB),)),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(height: 12,),
              Container(height: 52,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEAEAEA),),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Center(
                      child: TextFormField(
                        cursorColor: Color(0xffBBBBBB),
                        decoration: InputDecoration(
                            hintText: "Synthetic Blend oil",
                            hintStyle: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Color(0xffBBBBBB)
                              ),
                            ),
                            suffixIcon: Icon(Icons.arrow_forward_ios,color: Color(0xffBBBBBB),),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 12,),
              Container(height: 52,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEAEAEA),),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Center(
                      child: TextFormField(
                        cursorColor: Color(0xffBBBBBB),
                        decoration: InputDecoration(
                            hintText: "Conventional oil",
                            hintStyle: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Color(0xffBBBBBB)
                              ),
                            ),
                            suffixIcon: Icon(Icons.arrow_forward_ios,color: Color(0xffBBBBBB),),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 350,),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 30,right: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffFF7D01),
                ),
                child: Center(
                  child: Text("Not sure which oil you need?",style: GoogleFonts.roboto(
                    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
