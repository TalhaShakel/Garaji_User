import 'package:flutter/material.dart';

import '../../../constants/const_colors.dart';
import '../technician_profile.dart';
class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> with TickerProviderStateMixin {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 50),
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffEAEAEA)),
                      child: TextFormField(
                        controller: _search,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xff777777),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 57, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                builder: (BuildContext context) => Container(

                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 0,
                                            ),
                                            Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Color(0xffEB5757),
                                                  fontSize: 17,
                                                  fontWeight:
                                                  FontWeight.w500),
                                            ),
                                            Container(
                                              height: 42,
                                              width: 138,
                                              decoration: BoxDecoration(
                                                color:
                                                ConstColors.primaryColor,
                                                borderRadius:
                                                BorderRadius.circular(40),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Quote Filters",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.w500,
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
                                                  fontWeight:
                                                  FontWeight.w500),
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
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Price",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                  FontWeight.w500),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color: Color(0xff777777),
                                            ),
                                            SizedBox(
                                              width: 20,
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
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Rating",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                  FontWeight.w500),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color: Color(0xff777777),
                                            ),
                                            SizedBox(
                                              width: 20,
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
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Distance",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                  FontWeight.w500),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color: Color(0xff777777),
                                            ),
                                            SizedBox(
                                              width: 20,
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
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Service Delivery",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                  FontWeight.w500),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color: Color(0xff777777),
                                            ),
                                            SizedBox(
                                              width: 20,
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
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Working Daysss",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                  FontWeight.w500),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              color: Color(0xff777777),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                      ],
                                    ),
                                  ),
                                ));
                          },
                          child: Container(
                            height: 32,
                            width: 97,
                            decoration: BoxDecoration(
                              color: ConstColors.secondaryColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.filter_alt_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  "Fiter",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "There are 12 Gareji Shop in your location range.\nPlease select this filter.",
                style: TextStyle(color: Color(0xff777777)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ConstColors.primaryColor,
                  ),
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Container(
                        width: 130,
                        child: Center(
                            child: Text(
                              "Map",
                              style: TextStyle(fontSize: 17),
                            )),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 130,
                        child: Center(
                            child: Text(
                              "Technition",
                              style: TextStyle(fontSize: 17),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 1400,
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Services Requested",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Oil Change- Synthetic Blend Engine Oil",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff777777),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 20, right: 20),
                                child: Container(
                                    height: 500,
                                    width: double.infinity,
                                    child: Image.asset(
                                      'assets/images/Map.png',
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Container(
                                  height: 430,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffEAEAEA), width: 2),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Elite Auto Repair & Service Inc #2",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'No ratings available',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff777777)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "5.72 mi 5655 E Colonial Uniated State-2024",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff777777)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 26,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 124,
                                              width: 124,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Image.asset(
                                                "assets/images/Kala.png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.account_circle,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      "Tobi Johnson",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      "12km away",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      "5 Start",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.sell,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      "#1000/hr",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TechnicianProfile()));
                                          },
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(right: 10),
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
                                                    "Book Appointment",
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
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(right: 10),
                                          child: Container(
                                            height: 44,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff777777)),
                                                borderRadius:
                                                BorderRadius.circular(8)),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Send Message",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      color: Color(0xff777777)),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Services Requested",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Oil Change- Synthetic Blend Engine Oil",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff777777),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Container(
                                height: 390,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEAEAEA), width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Oil Change",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 26,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 124,
                                            width: 124,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/images/Kala.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.account_circle,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "Tobi Johnson",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "12km away",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "5 Start",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.sell,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "#1000/hr",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: ConstColors.secondaryColor,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Book Appointment",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff777777)),
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Send Message",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff777777)),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Container(
                                height: 390,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEAEAEA), width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Heating & Air Conditioning",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 26,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 124,
                                            width: 124,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/images/Kala.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.account_circle,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "Tobi Johnson",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "12km away",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "5 Start",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.sell,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "#1000/hr",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: ConstColors.secondaryColor,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Diagnosis/Describe Problem",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff777777)),
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Send Message",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff777777)),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Container(
                                height: 390,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffEAEAEA), width: 2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Oil Change",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 26,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 124,
                                            width: 124,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/images/Kala.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.account_circle,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "Tobi Johnson",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "12km away",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "5 Start",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.sell,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    "#1000/hr",
                                                    style:
                                                    TextStyle(fontSize: 17),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: ConstColors.secondaryColor,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Book Appointment",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: 44,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff777777)),
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Send Message",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff777777)),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                      controller: _tabController,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
