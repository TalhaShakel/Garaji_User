import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/Models/userModels.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/view/home.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/about_vehicle/about_your_vehicle.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/request_services.dart';
import 'package:garaji_user_app/view/screens/by_maka_4.dart';
import 'package:garaji_user_app/view/screens/by_make_1.dart';
import 'package:garaji_user_app/view/screens/by_make_2.dart';
import 'package:garaji_user_app/view/screens/by_make_3.dart';
import 'package:garaji_user_app/view/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

// checkuser() async {
//   try {
//     EasyLoading.show();
//     if (fAuth.currentUser?.uid != null) {
//       var document = await firestore_get("user", "${fAuth.currentUser?.uid}");
//       print(document.toString());

//       currentUserData =
//           UserModel.fromMap(document.data() as Map<String, dynamic>);
//       EasyLoading.dismiss();
//     }
//   } catch (e) {
//     EasyLoading.dismiss();

//     print(e);
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      title: 'Gareji Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: fAuth.currentUser?.uid.toString() == "" ? SplashScreen() : Home(),
      home: fAuth.currentUser?.uid.toString() == ""
          ? const SplashScreen()
          : StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('user')
                  .doc(FirebaseAuth.instance.currentUser!.uid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  currentUserData = UserModel.fromMap(snapshot.data);
                  if (currentUserData.vehicleInformation == false) {
                    Get.snackbar("Please Fill Your Vehicle Informations", "");
                    if (currentUserData.vehicle == "") {
                      print(0);
                      Get.snackbar("Please select the vehicle", "");
                      return RequestServices();
                    } else if (currentUserData.vehicleYear == "") {
                      print(1);
                      Get.snackbar("Please select the vehicle Year", "");
                      return AboutVehicle();
                    } else if (currentUserData.vehicleBrand == "") {
                      print(2);
                      Get.snackbar("Please select the vehicle brand", "");
                      return ByMake1();
                    } else if (currentUserData.vehicleModel == "") {
                      print(3);
                      Get.snackbar("Please select the vehicle Model", "");
                      return const ByMake2();
                    } else if (currentUserData.vehicleEngine == "") {
                      print(4);
                      Get.snackbar("Please select the vehicle Engine", "");
                      return const ByMake3();
                    } else if (currentUserData.zipCode == "") {
                      print(5);
                      Get.snackbar("Please Enter the Zip Code", "");
                      return const ByMake4();
                    }
                  }
                  return Home();
                } else
                  return Center(child: CircularProgressIndicator());
              },
            ),
    );
  }
}
