import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';

class SelectPayment extends StatefulWidget {
  const SelectPayment({Key? key}) : super(key: key);

  @override
  State<SelectPayment> createState() => _SelectPaymentState();
}

class _SelectPaymentState extends State<SelectPayment> {
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
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 51,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xffEAEAEA), width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.card_membership,
                          color: Color(0xff777777),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add Creadit card",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff777777)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Holisticly recaptiualize vertical portals and \nprofessional manufactured products.",
                  style: TextStyle(fontSize: 17, color: Color(0xff777777)),
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      "E-enable magnetic value whereas:",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
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
  Icon(Icons.card_membership,color: Colors.white,),
  SizedBox(width: 10,),
  Text('Confirm this service at 69.59',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),)
],
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
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
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Select Payment",
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
