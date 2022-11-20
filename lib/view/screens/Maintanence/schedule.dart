import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';
class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         children: [
           Container(
             height: double.infinity,
             width: double.infinity,
             child: Column(
               children: [
                 SizedBox(height: 150,),
                 Text("Mir’s Auto Works Inc",style: TextStyle(
                   fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff777777)
                 ),),
                 SizedBox(height: 8,),
                 Text("Select your appointment time",style: TextStyle(
                   fontSize: 24,fontWeight: FontWeight.w500
                 ),),
                 SizedBox(height: 20,),
                 Container(
                   height: 140,
                   width: double.infinity,
                   color: Color(0xffF9F7F7),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children: [
                         SizedBox(width: 20,),
                         Container(
                           height: 100,
                           width: 93,
                           decoration: BoxDecoration(
                             color: ConstColors.secondaryColor,
                             borderRadius: BorderRadius.circular(8)
                           ),
                           child: Column(
                             children: [
                               SizedBox(height: 10,),
                               Text("Sep",style: TextStyle(fontSize: 17,color: Colors.white),),
                               SizedBox(height: 5,),
                               Text("21",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.white),),
                               SizedBox(height: 5,),
                               Text("Tue",style: TextStyle(fontSize: 17,color: Colors.white),),
                             ],
                           ),
                         ),
                         SizedBox(width: 10,),
                         Container(
                           height: 100,
                           width: 93,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(8)
                           ),
                           child: Column(
                             children: [
                               SizedBox(height: 10,),
                               Text("Sep",style: TextStyle(fontSize: 17,),),
                               SizedBox(height: 5,),
                               Text("21",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,),),
                               SizedBox(height: 5,),
                               Text("Tue",style: TextStyle(fontSize: 17,),),
                             ],
                           ),
                         ),
                         SizedBox(width: 10,),
                         Container(
                           height: 100,
                           width: 93,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(8)
                           ),
                           child: Column(
                             children: [
                               SizedBox(height: 10,),
                               Text("Sep",style: TextStyle(fontSize: 17,),),
                               SizedBox(height: 5,),
                               Text("21",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,),),
                               SizedBox(height: 5,),
                               Text("Tue",style: TextStyle(fontSize: 17,),),
                             ],
                           ),
                         ),
                         SizedBox(width: 10,),
                         Container(
                           height: 100,
                           width: 93,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(8)
                           ),
                           child: Column(
                             children: [
                               SizedBox(height: 10,),
                               Text("Sep",style: TextStyle(fontSize: 17,),),
                               SizedBox(height: 5,),
                               Text("21",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,),),
                               SizedBox(height: 5,),
                               Text("Tue",style: TextStyle(fontSize: 17,),),
                             ],
                           ),
                         ),
                         SizedBox(width: 10,),
                       ],
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 10,right: 10),
                   child: Container(
                       height: 300,
                       child: GridView.builder(
                           shrinkWrap: true,
                           itemCount: 20,
                           gridDelegate:
                           SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisSpacing: 5,
                               childAspectRatio: 2.6,
                               mainAxisSpacing: 10,
                               crossAxisCount: 4),
                           itemBuilder: (context, index) {
                             return Container(
                               height: 44,
                               width: 86,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 border: Border.all(
                                     color: Color(0xffEAEAEA)),
                               ),
                               child: Row(
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                                 children: [
                                   Text(
                                     "09:00 AM",
                                     style: TextStyle(
                                         fontSize: 15,
                                         color: ConstColors.secondaryColor,fontWeight: FontWeight.w500),
                                   )
                                 ],
                               ),
                             );
                           })),
                 ),
               ],
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
                 InkWell(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Icon(
                     Icons.arrow_back_ios,
                     color: Colors.white,
                     size: 15,
                   ),
                 ),
                 SizedBox(
                   width: 100,
                 ),
                 Text(
                   "Schedule",
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
