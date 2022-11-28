import 'package:flutter/material.dart';
import 'package:garaji_user_app/Services/service.dart';
import 'package:garaji_user_app/view/screens/notifications.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/drawer_screen.dart';
import '../../constants/const_images.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
          padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
          child: FittedBox(
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
        ),
        title: Text(
          "${currentUserData.fullName}",
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Color(0xff3C3D3F),
                  fontSize: 17,
                  fontWeight: FontWeight.w500)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Icon(Icons.search, color: Color(0xff3C3D3F)),
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Icon(Icons.notifications, color: Color(0xff3C3D3F))),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "GAREJI SHOP APP Privacy Policy",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Posted: October 20, 2022",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "GarejiShop App (Gareji Shop, “we” or “us”) has created this Privacy Policy in order to demonstrate our firm commitment to privacy. This Privacy Policy is hereby incorporated in our Term of Use and by registering for Services via the GarejiShop App, you accept the terms of this Privacy Policy. All capitalized terms not otherwise defined herein shall have the meanings given them in the Terms of Use.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Notification of Changes",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We may update this Privacy Policy from time to time as our services change and expand. If we update this Privacy Policy, we will post the updated Privacy Policy. Unless otherwise provided below, the revised Privacy Policy will take effect when it is posted. Once any changes become effective, your continued use of the GarejiShop App after such time will signify your acceptance of the new terms. If we are going to use your Personally Identifiable Information (PII) in a manner different from that stated at the time of collection, we will notify you, and you will have a choice as to whether or not we use your Personally Identifiable Information in such different manner. In addition, if we make any material changes in our privacy practices that affect user information already stored in our database, we will notify you of the change and solicit your express acceptance of that change.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Information We Gather during Registration",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "If you register an Account or apply to become a Technician, we collect and store information that specifically identifies you or your account (Personally Identifiable Information). At this time, the most information you would be required to submit is your first name, last name, password, street address, city, state, zip/postal code, country, phone number, email address, and information about your vehicle such as: license plate, VIN (Vehicle Identification Number), make, model, year, and engine size. Technician applicants will also be asked to provide information about their repair skills and abilities to perform Vehicle Services.Other information requested on our registration page, including the ability to receive promotional offers from us, is optional. We may, in the future, include other optional requests for information from you, to help us to tailor the GarejiShop App for you and deliver personalized information to you. We may supplement our information with additional information purchased from third parties for marketing purposes.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "How We Use Registration Information",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We use Personally Identifiable Information for our own internal purposes including contacting you to inform you about updates to our services and providing you with information relating to transactions that you conduct on the GarejiShop App. We reserve the right to disclose your information as required by law.We do not rent or sell our Users' Personally Identifiable Information to third parties. We may send you email communications including information that we may think may be of interest to you, and we may provide your email address to third party partners if we believe their products or promotions may be of interest to you. You may opt out of receiving marketing emails at any time by modifying the Preferences section of your profile or by clicking on the unsubscribe link in any marketing email you receive from us. In addition, to improve our ability to serve you relevant ads across the Internet for products that will be more interesting to you, we may provide your personal information to our advertising agents that use your information solely for our advertising purposes.We may disclose and transfer your Personally Identifiable Information to any successor-in-interest of ours, such as a company that acquires our business. We may need to disclose your personal information when required by law or when we have a good-faith belief that such action is necessary to comply with a judicial proceeding, a court order or legal process.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Use of General Data",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We reserve the right to use the general data it obtains from Users' use of the GarejiShop App, including all statistical information. You acknowledge that such data belongs to us and that we shall have the right to use such data as we determine in our sole discretion.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Request for Deletion of Personal Data ",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "You can ask GarejiShop to delete your personal data when the data that we holds on you is longer needed or in the event your data has been used unlawfully. GarejiShop provide two (2) methods by which you may have your personal data removed to wit: Call this toll free number 787-628-7605 or follow this process to access our online data deletion request form.GarejiShop App will confirm receipt of a deletion request within 10 business days of receiving the request and to respond to requests to delete within 45 calendar days.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Online Order Placement and Management",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The private and shared areas of the GarejiShop App help to facilitate communication and the exchange and sharing of information between Users and Technicians. The information contained in work orders is accessible by the contracting user and the contracting Technician. We may use non-Personally Identifiable Information from a work order (e.g., the scope of work or spend limit) for statistical analysis, product development, marketing, and research. We reserve the right to monitor communications throughout the GarejiShop App, and if we believe that a User is violating any of our agreements; international, federal or state laws; and/or our stated policies, we may terminate such usage.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Online Surveys and Contests",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Occasionally, we conduct online user surveys to collect information about our Users' preferences. These surveys are optional, and if you choose to respond, your responses will be kept anonymous. Similarly, we may offer contests to qualifying Users in which we ask for contact and demographic information such as name, email address, and mailing address. None of this information is shared with third parties, except in summary form, if at all. The demographic information that we collect in the registration process and through online surveys is used to help us improve our services to meet the needs and preferences of our Users. This may include targeting advertising to you about our services. Information we gather through a contest may also be disclosed to third parties as necessary for prize fulfillment and other aspects of any contest or similar offering.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Cookies and Automatically Gathered Information",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We automatically collect your browser type and browser software version to tailor the presentation of the services to your browser and to maintain a record of your activity on the GarejiShop App. We use cookies to enable Users to specify unique preferences and to track User trends and patterns. Users always have the option of disabling cookies via their browser preferences. If you disable cookies on your browser, please note that some parts of the GarejiShop App may not function as effectively or may be considerably slower. As an automatic process, our web server software records a log file of IP addresses that access the GarejiShop App. We also collect IP address information but do not ordinarily link IP addresses to Users' Personally Identifiable Information. However, we can and will use IP addresses to identify a User when we, in our sole discretion, determine that it is necessary to enforce compliance with our various policies or to protect our service, the GarejiShop App, customers, or others.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Analytics",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We may use third-party Service Providers to monitor and analyze the use of our Service. Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity. For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page: https://policies.google.com/privacy?hl=en",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Technician Profile",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "As part of registration, Technicians may set up a Profile describing their experience, rates, and qualifications. Some of the information requested in the Profile registration is mandatory. If you decide to offer your services through GarejiShop App, this information may be used publicly. Potential Users will look to your Profile to help them decide whether to make use of your services.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Technicians",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Work orders placed on the GarejiShop App are completed by third-party Technicians. We may share the email addresses, phone numbers, or addresses of Users and Technicians once a project is awarded on our GarejiShop App to enable work on the project to be completed. These Technicians are not allowed to use Personally Identifiable Information except for the purpose of providing Vehicle Services.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Third Party Partners",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We enter into relationships with third-party partners to provide products and services to our Users. We may share your Personally Identifiable Information with certain third party partners as required to provide a specific product or service that you request from such a partner. However, these third party partners may not use this Personally Identifiable Information for any reason other than to provide the service or product that the User has explicitly signed up for. If you establish an Account through a third party partner (e.g., on a co-branded registration page), it is our general policy not to share anything other than summarized or aggregated data with the partner; however, any Personally Identifiable Information you provide may also be received by the partner and could be stored and used by them according to their privacy policy. Please take the time to review these third party privacy policies.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Comments and Feedback Submitted by Users",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We constantly seek to improve the quality and user experience of the Service. We value your input and encourage you to help us expand and make improvements to the GarejiShop App and the Service by providing us with any thoughts or comments you might have regarding the Service or the operation of the GarejiShop App. You can submit any comments you have to us by emailing to b.aviles@garejishop.com When sending us comments, we may receive your email address or User ID and the country in which you are located. This information is optional. If you provide this information, we will only use it to acknowledge or respond to your comments. Submitting comments via an email will not cause you to receive any secondary or promotional material unless specifically requested by you. In certain circumstances, we may ask for your permission to post your comments in marketing or promotional materials. We may send a request to receive Feedback on the GarejiShop App or the Service. You understand that information you provide as part of a feedback request, review, photo submission, or similar method will be available to other users and in some cases may be publicly available.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Security",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We will use commercially reasonable methods to keep Personally Identifiable Information securely in our files and systems. We cannot, however, guarantee the security of your Personally Identifiable Information, particularly, as it travels over the Internet. As such, we encourage you to exercise caution in determining what information you disclose via the Internet.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Terminating Your Account",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We save your Personally Identifiable Information until your account with us is terminated. To terminate account, contact GarejiShop Customer Service as indicated on our contact page. If you terminate your account, your Personally Identifiable Information cannot be recovered, and you may continue to receive email communications for a short period of time until we have updated all of our databases. After termination of your account, your Personally Identifiable Information may remain on our archived database and records for a reasonable time as residual information. We will not use this residual information for business development purposes but may retain it and use it in connection with internal business purposes, such as internal record keeping and legal compliance. We will maintain information on Users who have been removed for violating any of our policies.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Correcting/Updating Your Information and \nOpting Out",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This GarejiShop App gives the following options for changing and modifying information previously provided. You may update your registration information using the appropriate tools in the GarejiShop navigation bar.For other requests, please contact: b.aviles@garejishop.com",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Transmittal of Data",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We reserve the right to transmit into the United States any and all data that is submitted by Users outside the United States, including but not limited to Personally Identifiable Information, and you hereby expressly consent to the foregoing.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Legal Disclaimer",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Though we make every effort to preserve User privacy, we may need to disclose your Personally Identifiable Information when required by law, or when we have a good-faith belief that such action is necessary to comply with a current judicial proceeding, a court order, or legal process.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Contacting Us",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "If you have any questions about this Privacy Policy or our privacy practices, you may contact us at b.aviles@garejishop.com ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      "UPDATED: OCTOBER 20, 2022",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
