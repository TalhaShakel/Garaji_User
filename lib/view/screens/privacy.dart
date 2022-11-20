import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/screens/notifications.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/drawer_screen.dart';
import '../../constants/const_images.dart';
class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 8,bottom: 8),
          child: Image.asset(ConstImages.profilePic),
        ),
        title: Text("Omar faruk",style: GoogleFonts.roboto(
            textStyle: TextStyle(color: Color(0xff3C3D3F),fontSize: 17,fontWeight: FontWeight.w500)
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Icon(Icons.search,color: Color(0xff3C3D3F)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu_outlined,
                  color: Color(0xff3C3D3F),
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                },
                child: Icon(Icons.notifications,color: Color(0xff3C3D3F))),
          ),
        ],
      ),
    body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Privacy Policy",style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
            child: Text("Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation. Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation. Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation.Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation. Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation.",style:
              TextStyle(fontSize: 13,color: Color(0xff777777),letterSpacing: -0.2),),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text('Authoruzed Users',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500
              ),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
child: Text("Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation. Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation. Dramatically grow stand-alone convergence after next-generation core competencies. Distinctively recaptiualize cross functional channels after progressive innovation.Dramatically grow stand-alone."              ,style:
            TextStyle(fontSize: 13,color: Color(0xff777777),letterSpacing: -0.2),),
          ),

        ],
      ),
    )

      ,);
  }
}
