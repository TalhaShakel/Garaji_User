import 'dart:typed_data';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/constants/const_colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Models/userModels.dart';
import '../../../constants/const_images.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var about = TextEditingController(text: currentUserData.fullName.toString());

  var email = TextEditingController(text: currentUserData.userEmail.toString());

  var phone = TextEditingController(text: currentUserData.userPhone.toString());

  var address = TextEditingController(text: currentUserData.zipCode.toString());

  var name = TextEditingController(text: currentUserData.fullName.toString());

  var year = TextEditingController(text: "${currentUserData.vehicleYear}");

  var model = TextEditingController(text: "${currentUserData.vehicleModel}");

  var vehicleEngine =
      TextEditingController(text: "${currentUserData.vehicleEngine}");

  var vehicle = TextEditingController(text: "${currentUserData.vehicle}");

  var vehicleBrand =
      TextEditingController(text: " ${currentUserData.vehicleBrand}");

  Uint8List? image;
  upload_profilepic() async {
    // r++;
    if (image != null) {
      print(1);
      UploadTask uploadTask = FirebaseStorage.instance
          .ref("profile")
          .child(currentUserData.uid.toString())
          .putData(image!);
      // currentUserData.award.add(await uploadTask.snapshot.ref.getDownloadURL());
      // print(await uploadTask.snapshot.ref.getDownloadURL());
      var awardlink = (await uploadTask.snapshot.ref.getDownloadURL());
      print(2);

      await firestore_update(
          "user", "${currentUserData.uid}", {"profilePic": awardlink});
      print(3);
    } else {
      print(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff3C3D3F),
            )),
        title: Text(
          "Edit Profile",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: Color(0xff3C3D3F),
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Change Picture",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff777777),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    image == null
                        ? CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            child: ClipOval(
                              child: Image.network(
                                currentUserData.userImage,
                                fit: BoxFit.cover,
                                width: 102,
                                height: 102,
                              ),
                            ))
                        : CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            child: ClipOval(
                              child: Image.memory(
                                image!,
                                fit: BoxFit.cover,
                                width: 102,
                                height: 102,
                              ),
                            ),
                          ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () async {
                        EasyLoading.show();
                        var im = await pickImage(ImageSource.gallery);

                        if (im != null) {
                          image = im;
                        }
                        print(image);
                        setState(() {});

                        EasyLoading.dismiss();

                        // }
                      },
                      child: Container(
                        height: 51,
                        width: 132,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: ConstColors.secondaryColor),
                        child: Center(
                          child: Text(
                            "Change Picture",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Name",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff777777),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 52,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffEAEAEA)),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      // controller: ,
                      controller: name,
                      cursorColor: Color(0xffEAEAEA),
                      decoration: InputDecoration(
                          hintText: "Omar faruk",
                          hintStyle: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Color(0xffbbbbbb),
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "About",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff777777),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 52,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffEAEAEA)),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      controller: about,
                      cursorColor: Color(0xffEAEAEA),
                      decoration: InputDecoration(
                          hintText: "About yourself",
                          hintStyle: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Color(0xffbbbbbb),
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff777777),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 52,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffEAEAEA)),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      controller: email,
                      cursorColor: Color(0xffEAEAEA),
                      decoration: InputDecoration(
                          hintText: "hassan@gmail.com",
                          hintStyle: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Color(0xffbbbbbb),
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Phone",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff777777),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 52,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffEAEAEA)),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      controller: phone,
                      cursorColor: Color(0xffEAEAEA),
                      decoration: InputDecoration(
                          hintText: "+923198540852",
                          hintStyle: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Color(0xffbbbbbb),
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Address",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Color(0xff777777),
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 52,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffEAEAEA)),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextFormField(
                      controller: address,
                      cursorColor: Color(0xffEAEAEA),
                      decoration: InputDecoration(
                          hintText: "United Kingdom (12km away)",
                          hintStyle: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Color(0xffbbbbbb),
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 350,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ConstColors.secondaryColor,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Image.asset(
                      "assets/images/carIcon.png",
                      height: 98,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 26,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Year: ",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Container(
                                    width: 45,
                                    child: TextFormField(
                                      controller: year,
                                      // decoration: in,
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 26,
                          width: 111,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Model: ",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Container(
                                    width: 50,
                                    child: TextFormField(
                                      controller: model,
                                      // decoration: in,
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 26,
                          width: 119,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Brand: ",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Container(
                                    width: 40,
                                    child: TextFormField(
                                      controller: vehicle,
                                      // decoration: in,
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 26,
                          width: 139,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Sub model: ",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Container(
                                    width: 50,
                                    child: TextFormField(
                                      controller: model,
                                      // decoration: in,
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 26,
                          width: 139,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Sub model: ",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                Container(
                                    width: 50,
                                    child: TextFormField(
                                      controller: model,
                                      // decoration: in,
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(width: 10,),
                        Container(
                          height: 26,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Row(
                            children: [
                              Text(
                                "Transmicion Type:",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      letterSpacing: -0.3),
                                ),
                              ),
                              Container(
                                  width: 50,
                                  child: TextFormField(
                                    controller: model,
                                    // decoration: in,
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 26,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Engine Liters or Electric: ",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                FittedBox(
                                  child: Container(
                                      width: 60,
                                      child: TextFormField(
                                        controller: vehicleEngine,
                                        // decoration: in,
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 26,
                          width: 93,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  "Vn :",
                                  style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                ),
                                FittedBox(
                                  child: Container(
                                      width: 70,
                                      child: TextFormField(
                                        controller: vehicleBrand,
                                        // decoration: in,
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 26,
                          width: 279,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white54),
                          child: Center(
                            child: Text(
                              "Turbo,non turbo or super charge : Acura",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () async {
                  try {
                    EasyLoading.show();
                    await firestore_update("user", currentUserData.uid, {
                      "fullName": name.text.toString().trim(),
                      "submodel": model.text.toString().trim(),
                      "userEmail": email.text.toString().trim(),
                      "userPhone": phone.text.toString().trim(),
                      "vehicle": vehicle.text.toString().trim(),
                      "vehicleBrand": vehicleBrand.text.toString().trim(),
                      "vehicleEngine": vehicleEngine.text.toString().trim(),
                      "vehicleModel": model.text.toString().trim(),
                      "vehicleYear": year.text.toString().trim(),
                      "zipCode": address.text.toString().trim(),
                    });
                    await upload_profilepic();
                    var data = await firestore_get(
                        "user", currentUserData.uid.toString());
                    currentUserData = UserModel.fromMap(data);
                    setState(() {});

                    EasyLoading.dismiss();

                    print(data);
                  } on FirebaseException catch (e) {
                    EasyLoading.dismiss();
                    print(e);
                    Get.snackbar("${e.message}", "");
                  }

                  // Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xffFF7D01),
                  ),
                  child: Center(
                    child: Text(
                      "Update",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
