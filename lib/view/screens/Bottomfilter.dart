import 'package:custom_check_box/custom_check_box.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BottomFilter extends StatefulWidget {
  const BottomFilter({super.key});

  @override
  State<BottomFilter> createState() => _BottomFilterState();
}

class _BottomFilterState extends State<BottomFilter> {
  TextEditingController _search = TextEditingController();
  bool isVisible = true;
  double _value = 40.0;
  bool medicine = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 0,
                ),
                Text(
                  "Cancel",
                  style: TextStyle(
                      color: Color(0xffEB5757),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 42,
                  width: 138,
                  decoration: BoxDecoration(
                    color: ConstColors.primaryColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quote Filters",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      )
                    ],
                  ),
                ),
                Text(
                  "Reset",
                  style: TextStyle(
                      color: Color(0xffEB5757),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 0,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ExpandablePanel(
                  header: Text(
                    "Service",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  collapsed: SizedBox(
                    height: 0,
                  ),
                  expanded: Column(
                    children: [
                      ExpandablePanel(
                          header: Row(
                            children: [
                              Text(
                                "Mechanics",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              // Icon(Icons.arrow_drop_down_sharp)
                            ],
                          ),
                          collapsed: SizedBox(
                            height: 0,
                          ),
                          expanded: Column(children: [
                            Row(
                              children: [
                                CustomCheckBox(
                                    value: medicine,
                                    uncheckedFillColor: Colors.white,
                                    // shouldShowBorder: true,
                                    borderColor: Colors.grey,
                                    checkedFillColor:
                                        ConstColors.secondaryColor,
                                    borderRadius: 3,
                                    borderWidth: 1,
                                    checkBoxSize: 15,
                                    onChanged: (val) {
                                      setState(() {
                                        medicine = val;
                                      });
                                    }),
                                Text(
                                  "Light Mechanic",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                CustomCheckBox(
                                    value: isVisible,
                                    uncheckedFillColor: Colors.white,
                                    // shouldShowBorder: true,
                                    borderColor: Colors.grey,
                                    checkedFillColor:
                                        ConstColors.secondaryColor,
                                    borderRadius: 3,
                                    borderWidth: 1,
                                    checkBoxSize: 15,
                                    onChanged: (val) {
                                      setState(() {
                                        isVisible = val;
                                      });
                                    }),
                                Text(
                                  "Light Mechanic",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Electro Mechanics",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                CustomCheckBox(
                                    value: medicine,
                                    uncheckedFillColor: Colors.white,
                                    // shouldShowBorder: true,
                                    borderColor: Colors.grey,
                                    checkedFillColor:
                                        ConstColors.secondaryColor,
                                    borderRadius: 3,
                                    borderWidth: 1,
                                    checkBoxSize: 15,
                                    onChanged: (val) {
                                      setState(() {
                                        medicine = val;
                                      });
                                    }),
                              ],
                            ),
                          ])),
                      // Row(
                      //   children: [
                      //     Text("Mechanics",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                      //     SizedBox(width: 5,),
                      //     Icon(Icons.arrow_drop_down_sharp)
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     CustomCheckBox(
                      //         value: medicine,
                      //         uncheckedFillColor: Colors.white,
                      //         // shouldShowBorder: true,
                      //         borderColor: Colors.grey,
                      //         checkedFillColor:ConstColors.secondaryColor,
                      //         borderRadius: 3,
                      //         borderWidth: 1,
                      //         checkBoxSize: 15,
                      //         onChanged: (val) {
                      //           setState(() {
                      //             medicine = val;
                      //           });
                      //         }),
                      //     Text("Light Mechanic",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
                      //
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     CustomCheckBox(
                      //         value: isVisible,
                      //         uncheckedFillColor: Colors.white,
                      //         // shouldShowBorder: true,
                      //         borderColor: Colors.grey,
                      //         checkedFillColor:ConstColors.secondaryColor,
                      //         borderRadius: 3,
                      //         borderWidth: 1,
                      //         checkBoxSize: 15,
                      //         onChanged: (val) {
                      //           setState(() {
                      //             isVisible = val;
                      //           });
                      //         }),
                      //     Text("Light Mechanic",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
                      //
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     Text("Electro Mechanics",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                      //     CustomCheckBox(
                      //         value: medicine,
                      //         uncheckedFillColor: Colors.white,
                      //         // shouldShowBorder: true,
                      //         borderColor: Colors.grey,
                      //         checkedFillColor:ConstColors.secondaryColor,
                      //         borderRadius: 3,
                      //         borderWidth: 1,
                      //         checkBoxSize: 15,
                      //         onChanged: (val) {
                      //           setState(() {
                      //             medicine = val;
                      //           });
                      //         }),
                      //
                      //   ],
                      // ),
                      Row(
                        children: [
                          Text(
                            "Preventive Maintenance ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.arrow_drop_down_sharp)
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Alignment",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: isVisible,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  isVisible = val;
                                });
                              }),
                          Text(
                            "Oil Change",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: isVisible,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  isVisible = val;
                                });
                              }),
                          Text(
                            "Brake Pads",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Transmission Mechanics",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Body Shop ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.arrow_drop_down_sharp)
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Repairs",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: isVisible,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  isVisible = val;
                                });
                              }),
                          Text(
                            "Painting",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: isVisible,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  isVisible = val;
                                });
                              }),
                          Text(
                            "Detailing",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "A/C",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Tyre Shope",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Muffler Shop",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Auto Parts",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Junker",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Customizations",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.arrow_drop_down_sharp)
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 12,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Sound and Alarm",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 12,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Racing Modifications",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 12,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Car Wrapping",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 12,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Windows Tinting",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 12,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Tuning",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 12,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "Body Modifications ",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ExpandablePanel(
                  header: Text(
                    "Rating",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  collapsed: SizedBox(
                    height: 0,
                  ),
                  expanded: Column(
                    children: [
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "5.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff777777)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "4.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff777777)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "3.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff777777)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "2.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff777777)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomCheckBox(
                              value: medicine,
                              uncheckedFillColor: Colors.white,
                              // shouldShowBorder: true,
                              borderColor: Colors.grey,
                              checkedFillColor: ConstColors.secondaryColor,
                              borderRadius: 3,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                setState(() {
                                  medicine = val;
                                });
                              }),
                          Text(
                            "1.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff777777)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 13,
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ExpandablePanel(
                header: Text(
                  "Distance",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                collapsed: SizedBox(
                  height: 0,
                ),
                expanded: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('7.5 km')],
                    ),
                    SfSlider(
                      min: 0.0,
                      max: 100.0,
                      activeColor: ConstColors.secondaryColor,
                      inactiveColor: Colors.grey.withOpacity(0.40),
                      value: _value,
                      interval: 20,
                      showTicks: false,
                      showLabels: false,
                      enableTooltip: false,
                      minorTicksPerInterval: 1,
                      onChanged: (dynamic value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ExpandablePanel(
                  header: Text(
                    "Service Delivery",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  collapsed: SizedBox(
                    height: 0,
                  ),
                  expanded: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 41,
                            width: 81,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff777777), width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                                child: Text(
                              'Available',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff777777),
                              ),
                            )),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 41,
                            width: 81,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff777777), width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                                child: Text(
                              'Unavailable',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff777777),
                              ),
                            )),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ConstColors.secondaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text("Apply",
                        style: TextStyle(color: Colors.white, fontSize: 17))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
