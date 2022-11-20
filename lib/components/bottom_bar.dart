import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/home.dart';
import 'package:garaji_user_app/view/screens/Profile/my_profile.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/request_services.dart';
import 'package:garaji_user_app/view/screens/home_page/home_page.dart';

import '../constants/const_colors.dart';
import '../view/screens/Services/services.dart';
import '../view/screens/chat_screen/chat_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> allPages= [
    Home(),
    Chats(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:allPages[currentIndex!],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        currentIndex: currentIndex!,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 24,),
              label: "Home"
          ),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.home_repair_service_outlined,size: 24,),
          //     label: "Service"
          // ),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.person_rounded,size: 24,),
          //     label: "Profile"
          // ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble,size: 24,),
              label: "Message"
          ),
        ],
        selectedItemColor: ConstColors.secondaryColor,
        unselectedItemColor: Color(0xffBBBBBB),
      ),

    );
  }
  int? currentIndex = 0;

}
