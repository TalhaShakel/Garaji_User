import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';


class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 191,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 20, right: 10),
                                child: Image.asset(
                                  'assets/images/Frame 21.png',
                                  height: 97,
                                  width: 97,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2019 BMW 330i oil service",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff3C3D3F)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 99,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: ConstColors.secondaryColor),
                                    child: Center(
                                      child: Text(
                                        "Custom Offer",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.sell),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Custom Offer",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 21,
                      ),
                      Icon(Icons.timelapse),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Expected delivery 25.09.2022",
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 2,
                          height: 143,
                          color: Color(0xffB8B8B8),
                        ),
                      ),
                      SizedBox(width: 25,),
                      Column(
                        children: [
                          Container(
                            height: 76,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Color(0xffEAEAEA),
                              borderRadius: BorderRadius.circular(80),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Day",
                                        style: TextStyle(
                                            fontSize: 17, color: Color(0xff777777)),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "4",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Hours",
                                        style: TextStyle(
                                            fontSize: 17, color: Color(0xff777777)),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "46",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Minutes",
                                        style: TextStyle(
                                            fontSize: 17, color: Color(0xff777777)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Icon(Icons.notifications,color: Color(0xff777777),),
                              SizedBox(width: 5,),
                            Text("Notify Me",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0xff777777)),),
                            SizedBox(width: 10,),
                            Icon(Icons.timelapse,color: Color(0xff777777),),
                              SizedBox(width: 5,),
                            Text("Add To Calender",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0xff777777)),)],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 21,
                      ),
                      Icon(Icons.timelapse),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Your delivery date was updated to 09.06.22",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                      ),
                      Container(
                        height: 30,
                        width: 2,
                        color: Color(0xffB8B8B8),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                        width: 21,
                      ),
                      Icon(Icons.center_focus_strong_outlined),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Resolution accepted",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                      ),
                      Container(
                        height: 30,
                        width: 2,
                        color: Color(0xffB8B8B8),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                        width: 21,
                      ),
                      Icon(Icons.account_box_outlined),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Resolution accepted",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
          Container(
            height: 108,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ConstColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Timeline",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
