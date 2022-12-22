import 'package:flutter/material.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:garaji_user_app/view/screens/Bottomfilter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

double _value = 40.0;

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BottomFilter()),
    );
  }
}
