import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:garaji_user_app/view/home.dart';
import 'package:garaji_user_app/view/screens/Profile/my_profile.dart';
import 'package:garaji_user_app/view/screens/add_final.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/about_vehicle/about_your_vehicle.dart';
import 'package:garaji_user_app/view/screens/add_vehicle/request_services.dart';
import 'package:garaji_user_app/view/screens/forget_password/authentication_screen.dart';
import 'package:garaji_user_app/view/screens/forget_password/new_password.dart';
import 'package:garaji_user_app/view/screens/home_page/home_page.dart';
import 'package:garaji_user_app/view/screens/login_page.dart';
import 'package:garaji_user_app/view/screens/notifications.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/onboarding_page.dart';
import 'package:garaji_user_app/view/screens/onboarding_screens/screen_1.dart';
import 'package:garaji_user_app/view/screens/privacy.dart';
import 'package:garaji_user_app/view/screens/request_confirmed/track_screen.dart';
import 'package:garaji_user_app/view/screens/request_confirmed/track_screen2.dart';
import 'package:garaji_user_app/view/screens/splash_screen.dart';
import 'package:garaji_user_app/view/screens/start_screen.dart';
import 'package:garaji_user_app/view/screens/technician_profile.dart';
import 'package:garaji_user_app/view/screens/vehicles.dart';

import 'components/bottom_bar.dart';
// Import the generated file
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gareji Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
