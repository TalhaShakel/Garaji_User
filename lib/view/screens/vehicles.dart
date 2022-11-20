import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/about_vehicle/about_your_vehicle.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/const_colors.dart';
import '../../constants/const_images.dart';
class Vehicles extends StatefulWidget {
  const Vehicles({Key? key}) : super(key: key);

  @override
  State<Vehicles> createState() => _VehiclesState();
}

class _VehiclesState extends State<Vehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 130,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 308,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffEAEAEA),width: 2)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/carIcon.png',height: 60,color: ConstColors.primaryColor,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5,),
                                  Text('2022 Toyota Yaris',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,letterSpacing: -0.4),),
                                  SizedBox(height: 5,),
                                  Text('LE 4dr Hatchaback (1.5l 4cyl 4a)',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: -0.4),)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Icon(Icons.edit,color: ConstColors.primaryColor,),
                              )
                            ],
                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Mileage : ......",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),)
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Located :  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),),
                              Text("Mid Florida, FL",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,),)

                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              Text("VIN:  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),),
                              Text("VNKKTUD30FA015913",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,),)

                            ],
                          ),
                          SizedBox(height: 20,),
                          Divider(thickness: 1,indent: 20,endIndent: 20,),
                          SizedBox(height: 20,),

                          Padding(
                            padding:
                            const EdgeInsets.only(right: 20,left: 20),
                            child: Container(
                              height: 44,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:
                                  ConstColors.secondaryColor,
                                  borderRadius:
                                  BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Request Service",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 308,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffEAEAEA),width: 2)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/carIcon.png',height: 60,color: ConstColors.primaryColor,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5,),
                                  Text('2022 Toyota Yaris',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,letterSpacing: -0.4),),
                                  SizedBox(height: 5,),
                                  Text('LE 4dr Hatchaback (1.5l 4cyl 4a)',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: -0.4),)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Icon(Icons.edit,color: ConstColors.primaryColor,),
                              )
                            ],
                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Mileage : ......",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),)
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Located :  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),),
                              Text("Mid Florida, FL",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,),)

                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              Text("VIN:  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),),
                              Text("VNKKTUD30FA015913",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,),)

                            ],
                          ),
                          SizedBox(height: 20,),
                          Divider(thickness: 1,indent: 20,endIndent: 20,),
                          SizedBox(height: 20,),

                          Padding(
                            padding:
                            const EdgeInsets.only(right: 20,left: 20),
                            child: Container(
                              height: 44,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:
                                  ConstColors.secondaryColor,
                                  borderRadius:
                                  BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Request Service",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 308,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xffEAEAEA),width: 2)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/carIcon.png',height: 60,color: ConstColors.primaryColor,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5,),
                                  Text('2022 Toyota Yaris',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,letterSpacing: -0.4),),
                                  SizedBox(height: 5,),
                                  Text('LE 4dr Hatchaback (1.5l 4cyl 4a)',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,letterSpacing: -0.4),)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Icon(Icons.edit,color: ConstColors.primaryColor,),
                              )
                            ],
                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Mileage : ......",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),)
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Located :  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),),
                              Text("Mid Florida, FL",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,),)

                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              Text("VIN:  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff777777)),),
                              Text("VNKKTUD30FA015913",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,),)

                            ],
                          ),
                          SizedBox(height: 20,),
                          Divider(thickness: 1,indent: 20,endIndent: 20,),
                          SizedBox(height: 20,),

                          Padding(
                            padding:
                            const EdgeInsets.only(right: 20,left: 20),
                            child: Container(
                              height: 44,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color:
                                  ConstColors.secondaryColor,
                                  borderRadius:
                                  BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Request Service",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),


                ],
              ),
            ),
          ),

          Container(
            height: 102,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000).withOpacity(0.4),
                      blurRadius: 12,
                      spreadRadius: 0,
                      offset: Offset(0, 2)),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff777777),
                    ),
                  ),
               Text("Vehicles",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500
               ),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutVehicle()));
                      },
                      child: Text("Add",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),))
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
