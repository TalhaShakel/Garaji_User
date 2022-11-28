import 'package:flutter/material.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/constants/const_images.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/const_colors.dart';
import 'chats.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          },
                          child: Container(
                              height: 87,
                              width: double.infinity,
                              color: Colors.white,
                              child: ListTile(
                                leading: Container(
                                    height: 32,
                                    width: 32,
                                    child: Image.asset(ConstImages.profilePic)),
                                title: Text(
                                  "Jacod Henderson",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Nam quam nuch, blandit vei mengrobe it’s okay",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff777777)),
                                  ),
                                ),
                                trailing: Text(
                                  "10:36 Pm",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                        Container(
                            height: 87,
                            width: double.infinity,
                            color: Color(0xffF8F8F8),
                            child: ListTile(
                              leading: Container(
                                  height: 32,
                                  width: 32,
                                  child: Image.asset(ConstImages.profilePic)),
                              title: Text(
                                "Jacod Henderson",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Nam quam nuch, blandit vei mengrobe it’s okay",
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff777777)),
                                ),
                              ),
                              trailing: Text(
                                "10:36 Pm",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ],
                    );
                  }),
            ),
          ),
          Container(
            height: 102,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ConstColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, bottom: 5),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                          child: Image.network(
                            currentUserData.userImage,
                            fit: BoxFit.cover,
                            width: 102,
                            height: 102,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 25),
                    child: Text(
                      "${currentUserData.fullName}",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
