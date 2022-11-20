import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';
class ReviewService extends StatefulWidget {
  const ReviewService({Key? key}) : super(key: key);

  @override
  State<ReviewService> createState() => _ReviewServiceState();
}

class _ReviewServiceState extends State<ReviewService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child:Column(
              children: [
                SizedBox(height: 150,),
                Text("Mir’s Auto Works Inc",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.w500,
                ),),
                SizedBox(height: 55,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Services  Requested:",style: TextStyle(fontSize: 17,color: Color(0xff777777
                    )),)
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    SizedBox(width: 20,),

                    Text("Oil Change- Full Synthetic Engine Oill",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500
                    )),
                  ],
                ),
                SizedBox(height: 16,),
                Divider(
                  color: Color(0xffD8D8D8),
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Appointment:',style: TextStyle(fontSize: 17,),),
                    Spacer(),
                    Text("Tue 09/20 at 7:30am",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: ConstColors.secondaryColor),),
                    SizedBox(width: 20,),
                  ],
                ),
                SizedBox(height: 16,),
                Divider(
                  color: Color(0xffD8D8D8),
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Total:',style: TextStyle(fontSize: 17,),),
                    Spacer(),
                    Text("66.99",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: ConstColors.secondaryColor),),
                    SizedBox(width: 20,),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ConstColors.primaryColor,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.card_membership,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Book with Pay",style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ConstColors.secondaryColor,
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.credit_card,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Book With a Credit Card",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),
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
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Review Service",
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
