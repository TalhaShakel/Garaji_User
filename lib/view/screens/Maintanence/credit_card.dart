import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';
class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  TextEditingController _card= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 150,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Card Number:",style: TextStyle(
                      fontSize: 17,color: Color(0xff777777)
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xffEAEAEA),width: 2),
                      ),
                      child: TextFormField(
                        controller:_card ,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: '854.259.555.109',
                            border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15),
                          hintStyle: TextStyle(
                            fontSize: 15,color: Color(0xffB8B8B8),
                          )
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF1F1F1)
                      ),
                      child: Center(
                        child: Icon(Icons.camera_alt,color: Colors.grey,),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 15,),
                    Text("Expiration:",style: TextStyle(
                        fontSize: 17,color: Color(0xff777777)
                    ),),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xffEAEAEA),width: 2),
                      ),
                      child: TextFormField(
                        controller:_card ,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            hintText: 'MM/YY',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                              fontSize: 15,color: Color(0xffB8B8B8),
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("CVC:",style: TextStyle(
                        fontSize: 17,color: Color(0xff777777)
                    ),),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xffEAEAEA),width: 2),
                      ),
                      child: TextFormField(
                        controller:_card ,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            hintText: 'MM/YY',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                              fontSize: 15,color: Color(0xffB8B8B8),
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Billing Zip Code:",style: TextStyle(
                        fontSize: 17,color: Color(0xff777777)
                    ),),
                    SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xffEAEAEA),width: 2),
                      ),
                      child: TextFormField(
                        controller:_card ,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            hintText: '12345',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                              fontSize: 15,color: Color(0xffB8B8B8),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("First Name:",style: TextStyle(
                        fontSize: 17,color: Color(0xff777777)
                    ),),
                    SizedBox(width: 80,),
                    Text("Last Name:",style: TextStyle(
                        fontSize: 17,color: Color(0xff777777)
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xffEAEAEA),width: 2),
                      ),
                      child: TextFormField(
                        controller:_card ,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            hintText: 'Omer',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                              fontSize: 15,color: Color(0xffB8B8B8),
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xffEAEAEA),width: 2),
                      ),
                      child: TextFormField(
                        controller:_card ,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            hintText: 'Faruk',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintStyle: TextStyle(
                              fontSize: 15,color: Color(0xffB8B8B8),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 28),
                  child: Container(
                    height: 51,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffB8B8B8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Save',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 19,),
                Row(
                  children: [
                    SizedBox(width: 25,),

                    Icon(Icons.lock,size: 15,),
                    SizedBox(width: 10,),
                    Text("Your privacy is protected, we is very carefully \ninformation more about our privacy policy, here.",style:
                      TextStyle(
                        fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff777777)
                      ),)
                  ],
                )

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
                  width: 65,
                ),
                Text(
                  "Add Credit Card",
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
