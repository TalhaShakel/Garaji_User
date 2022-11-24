import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/Models/userModels.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/view/home.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  checkuser() async {
    try {
      EasyLoading.show();
      if (fAuth.currentUser?.uid != null) {
        var document = await firestore_get("user", "${fAuth.currentUser?.uid}");
        print(document.toString());

        currentUserData =
            UserModel.fromMap(document.data() as Map<String, dynamic>);
        EasyLoading.dismiss();
      }
    } catch (e) {
      EasyLoading.dismiss();

      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gareji Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: currentUserData == null ? SplashScreen() : Home(),
      builder: EasyLoading.init(),
    );
  }
}
