import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/drawer_screen.dart';
import '../../constants/const_images.dart';
import 'notifications.dart';

class Conditions extends StatefulWidget {
  const Conditions({Key? key}) : super(key: key);

  @override
  State<Conditions> createState() => _ConditionsState();
}

class _ConditionsState extends State<Conditions> {
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
          child: Image.asset(ConstImages.profilePic),
        ),
        title: Text(
          "Omar faruk",
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
                "GAREJI SHOP APP TERMS OF SERVICE",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Posted: October 20, 2022",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  'These Terms of Use, together with the privacy policy available at (“Privacy Policy” ) and the rules, policies, terms and conditions set forth in, referred to and/or linked herein, all of which are incorporated herein by reference  are, collectively , the “Agreement.” This Agreement constitutes a legal agreement between you ("you") and GAREJI SHOP APP. (hereinafter referred to as “GarejiShop,” “we” or “us”). This Agreement sets forth the terms of use (“Terms”) that govern the access or use by you of applications,  content, products, programs and services made available by GarejiShop (the “Services”), including an agreement to engage in binding arbitration to resolve any disputes between us. PLEASE READ THESE TERMS CAREFULLY BEFORE ACCESSING OR USING THE SERVICES.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "Your access and use of the Services constitutes your agreement to be bound by this Agreement. If you do not agree to the Terms, you may not access or use the Services. The Terms, together with any Supplemental Terms (as defined below), expressly supersede prior agreements or arrangements with you, and supersede content or information you read or have access to at other places, such as our website, emails, or applications. GarejiShop may immediately terminate this Agreement or any Services with respect to you, or generally cease offering or deny access to the Services or any portion thereof, at any time for any reason or no reason.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "Supplemental terms or policies applicable to any particular Service (“Supplemental Terms”) will be disclosed to you. Supplemental Terms may include terms and conditions of any particular event, activity, program or promotion. Supplemental Terms are in addition to,and shall be deemed a part of, this Agreement. Supplemental Terms shall prevail over these Terms in the event of a conflict with respect to the applicable Service(s).GarejiShop may amend the Terms from time to time. Amendments will be effective upon GarejiShop's posting of such updated Terms or such amended Supplemental Terms. Your continued access or use of the Services after such posting constitutes your consent to be bound by the Terms, as amended.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "By accessing and using the Services, you represent and warrant that: (i) you are at least 18 years old and are a legal adult in the jurisdiction in which you reside; and (ii) you have the right, authority and capacity to enter into this Agreement and to abide by the Terms, and that you will so abide. If you enter into this Agreement on behalf of a company or other organization, you represent and warrant that you have authority to act on behalf of that entity and to bind that entity to this Agreement.The Services are not available to anyone under 18 years of age, or to any individual whose account has been terminated. Your account may not be used for Services to be performed for another person.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  'The Services are not available to anyone under 18 years of age, or to any individual whose account has been terminated. Your account may not be used for Services to be performed for another person.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "SERVICES",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  'The Services constitute a technology platform including websites and mobile applications (the “GarejiShop App”) that enables users to access a network of independent third party vehicle service providers (mechanics, technicians, towing service providers, or other independent contractors) (“Technicians”), and/or to arrange for vehicle inspection, diagnosis, maintenance, repair, towing or related services (“Vehicle Services”). WE DO NOT PROVIDE VEHICLE SERVICES, AND WE ARE NOT THE EMPLOYER OF ANY THIRD PARTY PROVIDER. You acknowledge that we do not supervise, direct, or control a Technician’s work or Services performed in any manner. A Technician provides services to you as an independent contractor, and is not an employee, joint venture, partner, agent, or franchisee of GarejiShop for any purpose whatsoever.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "a)License ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Subject to your compliance with these Terms,",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff777777),
                        letterSpacing: -0.2),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Text(
                  'exclusive, non-sublicensable, revocable, non-transferrable license to access and use the Services subject to the Terms of this Agreement. Any rights not expressly granted herein are reserved by us.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "b)Restrictions ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "You may not: (i) remove any copyright,",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff777777),
                        letterSpacing: -0.2),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Text(
                  "trademark or other proprietary notices from any portion of the Services; (ii) reproduce, modify, prepare derivative works based upon, distribute, license, lease, sell, resell, transfer, publicly display, publicly perform, transmit, stream, broadcast or otherwise exploit the Services except as expressly permitted by us; (iii) decompile, reverse engineer or disassemble the Services except as may be permitted by applicable law; (iv) link to, mirror or frame any portion of the Services; (v) cause or launch any programs or scripts for the purpose of scraping, indexing, surveying, or otherwise data mining any portion of the Services or unduly burdening or hindering the operation and/or functionality of any aspect of the Services; or (vi) attempt to gain unauthorized access to or impair any aspect of the Services or its related systems or networks.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "c)Ownership ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "The Services and all rights herein are and ",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff777777),
                        letterSpacing: -0.2),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Text(
                  'shall remain our property. Neither these Terms nor your use of the Services convey or grant to you any rights in or related to the Services, except for the limited license granted above, or to use or reference in any manner our company names, logos, product and service names, trademarks or services marks. All content appearing on the GarejiShop App is our property or the property of our partners and is protected by international Copyright Laws. Certain names, graphics and logos are trademarks, service marks, or trade dress (together, “Marks”) of GarejiShop. Our Marks may not be used for any purpose except pursuant to our Trademark Usage Policy. All other Marks are the property of their respective owners and may not be used without their prior written consent. ',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Accounts",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "In order to use most aspects of the Services, you must register for and maintain a user account ('Account'). Account registration requires you to submit certain personal information, such as your name, email address, address, vehicle information, and/or mobile phone number, and/or at least one valid payment method (e.g., a credit card). You agree to maintain accurate, complete, and up-to-date information in your Account. Your vehicle information may include the license plate number, VIN (Vehicle Identification Number), make, model, year, engine size, trim, etc. Your failure to maintain accurate, complete, and up-to-date Account information may result in your inability to access and use the Services or GarejiShop's termination of this Agreement.You are responsible for all activity that occurs under your Account, and you agree to maintain the security and secrecy of your Account username and password at all times. We are not liable for any loss that you may suffer through the use of your password by others. You must notify us immediately of any unauthorized use of your Account or of any other breach of security known to you with respect to GarejiShop.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "SCHEDULING AND CANCELLATION OF JOB",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "To request an appointment for Vehicle Services (a “Job” and a “Job Request”), you may be asked to specify the type of service that you think is required, the location where you would like the Job to be performed, and the date and time that you would like the Job to take place. The Parties agree that the service can happen at the Technicians location. You agree that it is your responsibility to provide a suitable location for the Job, and to ensure that the Technician has proper access and permission, and is legally authorized to complete ",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  'Once you submit a Job Request, we may provide you with  a list of possible Technicians along with their experience information and “rating” based on previous customer reviews (if applicable). We reserve the right to modify, add, or delete items at any time. If you have agreed with the Technician to modify, add, or delete items in the Job Request, or to reschedule a Job you must make the according arrangements between the technician and you using the communication tools provided by Gareji Shop or via private communication.You agree to treat Technicians courteously and lawfully, to provide a safe and appropriate working environment that is in compliance with all applicable laws and regulations, and to provide reasonable cooperation to enable Technicians to complete the Job. We do not control the availability of the independent Technicians on the GarejiShop App.You may reschedule a scheduled job at any time without any penalty provided you give the Technician reasonable notice before a scheduled Service appointment or Job, there is no reschedule fee. You may cancel a scheduled Job at any time provided you give reasonable notice to the Technician that is service will no longer be necessary before a scheduled Service appointment or Job, there is no cancellation fee.We cannot guarantee that your selected Technician will be available to handle your service request at all time; Technicians reserve the right to refuse a Job Request. You hereby agree to hold us harmless from any liability that may result from the cancellation of a Job or refusal of a Technician to complete a Job.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  'There may be instances where, after a Technician has arrived at your location, the Technician finds that he or she is not able to successfully complete the Job, for reasons including, without limitation, that the Technician does not have access or permission to work on your vehicle at the location you provided, that the location is not fit for automotive services (e.g., hill or uneven surface), or that the information you provided with respect to your vehicle is inaccurate or incomplete. In such instances and depending on your communication with the Technician, the Technician shall determine if a cancelation fee is applicable.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "COMMUNICATIONS",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  'You expressly consent and agree to receive communications from us, including via e-mail, text message, calls, and push notifications, to the cellular telephone number you provided to us. You understand that you may receive communications generated by automatic telephone dialing systems and/or which will deliver pre-recorded messages sent by or on behalf of GarejiShop or its affiliated companies, or Technicians, including operational communications concerning your Account, use of the GarejiShop App or Services, updates concerning new and existing features on the GarejiShop App, communications concerning promotions, and news concerning us and our Services. You may opt out of receiving text (SMS) messages from us at any time by texting the word STOP from the mobile device receiving the messages. You acknowledge that opting out of receiving text messages may impact your use of the Services. You agree to our use of a service provider to mask your telephone number when you call or exchange text messages with a Technician. During this process, we will receive and store data, including the date and time of the call or text message, the phone numbers, and the content of the text messages. You agree to our use and disclosure of this data for legitimate business purposes. We may send you confirmation and other transactional emails regarding the Services. We may also send you emails or text messages about services that we think might interest you ("Promotional Emails"). You can unsubscribe from Promotional Emails at any time by clicking unsubscribe in our email communications or contacting us.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "PROMOTIONAL CODES OR CREDITS ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "We may create promotional codes or credits that may be redeemed for Account credit, or other features or benefits related to the Services and/or a Technician's services, subject to any additional terms associated with each promotion ('Promo Codes'). You agree that Promo Codes: (i) must be used by the intended audience and for the intended purpose and in a lawful manner; (ii) may not be duplicated, sold or transferred in any manner, or made available to the general public (whether posted to a public form or otherwise), unless expressly permitted by us; (iii) may be disabled by us at any time for any reason without liability to GarejiShop; (iv) may only be used pursuant to the specific terms that we established for such Promo Code; (v) are not valid for cash; and (vi) may expire prior to your use. GarejiShop reserves the right to interpret how the Promo Codes will be used, or to withhold or deduct credits or other features or benefits obtained through the use of Promo Codes by you or any other user in the event that we determine or believe that the use or redemption of the Promo Code was in error, fraudulent, illegal, or in violation of the applicable Promo Code terms or these terms.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "USER CONTENT",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "We may permit you from time to time to submit, upload, publish or otherwise make available textual, audio, and/or visual content and information, including commentary and feedback related to the Services, initiation of support requests, and submission of entries for competitions and promotions ('User Content'). Any User Content provided by you remains your property. However, by providing User Content to us, you grant us a worldwide, perpetual, irrevocable, transferable, unrestricted, non-exclusive, absolute, royalty-free license, with the right to sublicense, to use, copy, modify, transmit, reproduce, exhibit, disclose, display, transform, create derivative works of, distribute, publicly display, publicly perform, and otherwise exploit in any manner such User Content in all formats and distribution channels now known or hereafter devised, without further notice to or consent from you, and without the requirement of payment to you or any other person or entity. Further, we shall be free to use any ideas, concepts, know-how or techniques contained in such User Content for any purpose whatsoever, including developing, manufacturing and marketing products and/or services incorporating any User Content. You represent and warrant that: (i) you either are the sole and exclusive owner of all User Content or you have all rights, licenses, consents and releases necessary to grant us the license to the User Content as set forth above; and (ii) neither the User Content nor your submission, uploading, publishing or otherwise making available of such User Content nor our use of the User Content as permitted herein will infringe, misappropriate or violate a third party's intellectual property or proprietary rights, or rights of publicity or privacy, or result in the violation of any applicable law or regulation. You agree to not provide User Content that is defamatory, libelous, hateful, violent, obscene, pornographic, unlawful, or otherwise offensive, as determined by us in our sole discretion, whether or not such material may be protected by law. We may, but shall not be obligated to, review, monitor, or remove User Content, at our sole discretion and at any time and for any reason or no reason, without notice to you.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "NETWORK ACCESS AND DEVICES ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
"You are responsible for obtaining the compatible hardware or devices and data network access necessary to use the Services. The Services may be subject to malfunctions and delays inherent in the use of the Internet and electronic communications and we shall not be held liable for any such malfunction or del"
    ,
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "TERMINATION OF SERVICE",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
"We may terminate this Agreement or terminate or suspend your Account immediately at any time for any reason or for no reason upon notice to you. If we terminate or suspend your Account, you are prohibited from registering and creating a new account under your name, a fake or borrowed name, or the name of any third party, even if you may be acting on behalf of the third party. In addition to terminating or suspending your Account, we reserve the right to pursue any available legal action. When terminating your Account, we may delete the Account and any information in it. You have no ownership rights to your Account.You may terminate this Agreement by completely and permanently ceasing to use the Services (provided that there are no outstanding Services ordered under your Account). If you attempt to terminate this Agreement while there are still outstanding Services ordered under your Account, this Agreement shall not terminate until such Services have been performed or otherwise canceled as permitted by this Agreement"                  ,
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "TERMINATION OF SERVICE",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                  "We may terminate this Agreement or terminate or suspend your Account immediately at any time for any reason or for no reason upon notice to you. If we terminate or suspend your Account, you are prohibited from registering and creating a new account under your name, a fake or borrowed name, or the name of any third party, even if you may be acting on behalf of the third party. In addition to terminating or suspending your Account, we reserve the right to pursue any available legal action. When terminating your Account, we may delete the Account and any information in it. You have no ownership rights to your Account.You may terminate this Agreement by completely and permanently ceasing to use the Services (provided that there are no outstanding Services ordered under your Account). If you attempt to terminate this Agreement while there are still outstanding Services ordered under your Account, this Agreement shall not terminate until such Services have been performed or otherwise canceled as permitted by this Agreement"                  ,
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'INSPECTION OR DIAGNOSIS WORK',
                    style: TextStyle( fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "Obtaining any inspection through the GarejiShop App does not indicate that your vehicle would pass a State inspection or a SMOG inspection. If you schedule a diagnosis Job with a Technician, he or she will first seek to diagnose the problem. In performing a diagnosis, he or she may go through a step-by-step process to rule out or confirm part failures through visual inspection and/or appropriate tests. Although Technicians use their experience in performing diagnoses, we cannot guarantee that any particular diagnosis will identify all of the problems with your car (and/or solutions) during the first inspection. Sometimes, the only way to get to the root cause of a problem is to go through a process of elimination – that is, to replace a part suspected to be defective and then see whether the problem still exists.After receiving a diagnosis, you may request subsequent repair work recommended based on the diagnosis. You agree that another charges may applies to such repair work. For example, if your car has an oil leak, the leak may be coming from two or three different places in your engine. The Technician may recommend replacing the part responsible for the most obvious source of the leak, and then recheck the car to see if there are other components that are leaking too. You understand that, if there are other leaking components, replacing those other components would be separate work subject to an additional Charge.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'VETTING OF THIRD PARTY PROVIDERS',
                    style: TextStyle( fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
"We cannot confirm that each Technician is who they claim to be and therefore, we cannot and do not assume any responsibility for the accuracy or reliability of identity or any information provided through the GarejiShop App. When interacting with Technicians, you should exercise caution and common sense to protect your personal safety and property, just as you would when interacting with other persons whom you don’t know. WE ARE NOT RESPONSIBLE FOR THE CONDUCT, WHETHER ONLINE OR OFFLINE, OF ANY USER OF THE GAREJI SHOP APP AND YOU HEREBY RELEASE GAREJI SHOP FROM ANY LIABILITY RELATED THERETO. WE WILL NOT BE LIABLE FOR ANY CLAIM, INJURY OR DAMAGE ARISING IN CONNECTION WITH YOUR USE OF THE GAREJI SHOP APP.",                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'LEGAL DISCLAIMER',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "EXCEPT AS OTHERWISE PROVIDED, THE SERVICE AND PARTS ARE MADE AVAILABLE ON AN “AS IS,” “AS AVAILABLE,” AND “WITH ALL FAULTS” BASIS, WITHOUT ANY WARRANTIES OR CONDITIONS, EXPRESS, IMPLIED OR STATUTORY. YOU USE THE SERVICES ENTIRELY AT YOUR OWN RISK. WE DO NOT PROVIDE, AND SPECIFICALLY DISCLAIM, ANY REPRESENTATION OR WARRANTY OF ANY KIND TO YOU OR ANY OTHER PERSON OR ENTITY, INCLUDING, BUT NOT LIMITED TO, ANY EXPRESS OR IMPLIED WARRANTY (I) OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE; (II) OF INFORMATIONAL CONTENT OR ACCURACY; (III) OF NON-INFRINGEMENT; (IV) OF QUIET ENJOYMENT; (V) OF TITLE; (VI) THAT THE GAREJI SHOP APP WILL OPERATE ERROR FREE, OR IN AN UNINTERRUPTED FASHION; (VII) THAT ANY DEFECTS OR ERRORS IN THE GAREJI SHOP APP WILL BE CORRECTED; (VIII) THAT SERVICES OFFERED WILL BE AVAILABLE IN ALL MARKETS; OR (IX) THAT THE GAREJI SHOP APP IS COMPATIBLE WITH ANY PARTICULAR HARDWARE OR SOFTWARE. GAREJI SHOP MAKES NO REPRESENTATION, WARRANTY, OR GUARANTEE REGARDING THE RELIABILITY, TIMELINESS, QUALITY, SUITABILITY, OR AVAILABILITY OF THE SERVICES OR ANY SERVICES OR GOODS REQUESTED THROUGH THE USE OF THE SERVICES, OR THAT THE SERVICES WILL BE UNINTERRUPTED OR ERROR-FREE. GAREJI SHOP  DOES NOT GUARANTEE THE QUALITY, SUITABILITY, SAFETY OR ABILITY OF THIRD PARTY PROVIDERS. YOU AGREE THAT THE ENTIRE RISK ARISING OUT OF YOUR USE OF THE SERVICES, AND ANY SERVICE OR GOOD REQUESTED IN CONNECTION THEREWITH, REMAINS SOLELY WITH YOU, TO THE MAXIMUM EXTENT PERMITTED UNDER APPLICABLE LAW."
                   , style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff777777),
                    letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'LIMITATIONS OF LIABILITY',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "YOU AGREE NOT TO HOLD GAREJI SHOP (OR, ITS STOCKHOLDERS, AFFILIATES, LICENSORS, PARTNERS, MEMBERS, DIRECTORS, MANAGERS, OFFICERS, EMPLOYEES, AGENTS, SUCCESSORS, ASSIGNS AND CONTENT PROVIDERS (COLLECTIVELY, 'MEMBERs')) LIABLE FOR ANY DAMAGES, EXPENSES, LOSSES, SUITS, CLAIMS, AND/OR CONTROVERSIES THAT HAVE ARISEN OR MAY ARISE, WHETHER KNOWN OR UNKNOWN, RELATING TO YOUR USE OF OR INABILITY TO USE THE GAREJI SHOP APP OR ANY SERVICES, INCLUDING WITHOUT LIMITATION ANY LIABILITIES ARISING IN CONNECTION WITH THE CONDUCT, ACT, DELAY OF PERFORMANCE OR OMISSION OF ANY USER OR THIRD PARTY PROVIDER (OR ANY TRANSACTION OR RELATIONSHIP BETWEEN YOU AND ANY THIRD PARTY PROVIDER), ANY DISPUTE WITH ANY USER OR THIRD PARTY PROVIDER, ANY INSTRUCTION, ADVICE, ACT, OR SERVICE PROVIDED BY GAREJI SHOP OR MEMBERS, AND ANY DESTRUCTION OF YOUR INFORMATIONUNDER NO CIRCUMSTANCES WILL GAREJI SHOP OR MEMBERS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, PUNITIVE OR EXEMPLARY DAMAGES, HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN AN ACTION FOR CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE) OR OTHERWISE, INCLUDING WITHOUT LIMITATION LOST PROFITS, LOST EARNINGS, LOST DATA, PERSONAL INJURY, OR PROPERTY DAMAGE, WHETHER OR NOT WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. GAREJI SHOP AND MEMBERS DO NOT ACCEPT ANY LIABILITY WITH RESPECT TO THE QUALITY OR FITNESS OF ANY WORK PERFORMED IN CONNECTION WITH THE GAREJI SHOP APP.THE GAREJI SHOP APP IS ONLY A VENUE FOR CONNECTING USERS. WE ARE NOT RESPONSIBLE FOR ASSESSING THE SUITABILITY, LEGALITY OR ABILITY OF ANY THIRD PARTY PROVIDER AND YOU EXPRESSLY WAIVE AND RELEASE GAREJI SHOP FROM ANY AND ALL LIABILITY, CLAIMS OR DAMAGES (ACTUAL, DIRECT OR CONSEQUENTIAL) OF EVERY KIND AND NATURE, KNOWN AND UNKNOWN, SUSPECTED AND UNSUSPECTED, DISCLOSED AND UNDISCLOSED, ARISING FROM OR IN ANY WAY RELATED TO ANY THIRD PARTY PROVIDER. WE EXPRESSLY DISCLAIM ANY LIABILITY THAT MAY ARISE BETWEEN YOU AND ANY THIRD PARTY PROVIDER. THE QUALITY OF THE SERVICES SCHEDULED OR REQUESTED THROUGH THE USE OF THE GAREJI SHOP APP IS ENTIRELY THE RESPONSIBILITY OF THE THIRD PARTY PROVIDER WHO ULTIMATELY PROVIDES SUCH SERVICES TO YOU. YOU UNDERSTAND, THEREFORE, THAT BY USING THE GAREJI SHOP APP, YOU MAY BE EXPOSED TO SERVICES THAT ARE POTENTIALLY DANGEROUS, OFFENSIVE, HARMFUL, UNSAFE OR OTHERWISE OBJECTIONABLE, AND THAT YOU USE THE GAREJI SHOP APP, AND THIRD PARTY PROVIDER, AT YOUR OWN RISK. NOTHING IN THIS AGREEMENT OR THE GAREJI SHOP APP CONSTITUTES, OR IS MEANT TO CONSTITUTE, ADVICE OF ANY KIND. IF YOU REQUIRE ADVICE IN RELATION TO ANY LEGAL, FINANCIAL OR MEDICAL MATTER YOU SHOULD CONSULT AN APPROPRIATE PROFESSIONAL.YOU ACKNOWLEDGE THAT THIRD PARTY PROVIDERS MAY NOT BE PROFESSIONALLY LICENSED OR PERMITTED", style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff777777),
                    letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'INDEMNIFICATION',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
"You hereby agree to indemnify, defend, and hold harmless GarejiShop and Members from and against any and all claims, losses, expenses, liabilities, damages or demands (including attorneys' fees and costs incurred), in connection with or resulting from, directly or indirectly: (i) your use or misuse of or inability to use the GarejiShop App, and/or the Services, (ii) your violation of this Agreement, (iii) your violation of any applicable law or regulation; (iv) your violation of the rights of another (including Technicians), and (v) your information and content that you submit or transmit through the GarejiShop App. GarejiShop reserves the right, at its own expense, to assume the exclusive defense and control of any matter otherwise subject to your indemnification. You will not, in any event, settle any such claim or matter without the prior written consent of ",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff777777),
                    letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'DISPUTE RESOLUTION',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "Any dispute or claim relating in any way to your use of the GarejiShop App or any Vehicle Services will be resolved by binding arbitration, rather than in Court ,except that you may assert claims in small claims Court if your claims qualify. The Federal Arbitration Act and Federal arbitration law apply to this agreement. There is no judge or jury in arbitration, and court review of an arbitration award is limited. However, an arbitrator can award on an individual basis the same damages and relief as a court (including injunctive and declaratory relief or statutory damages), and must follow the terms of these Terms of Use as a court would.We each agree that any dispute resolution proceedings will be conducted only on an individual basis and not in a class, consolidated or representative action. If for any reason a claim proceeds in court rather than in arbitration we each waive any right to a jury trial. We also both agree that you or we may bring suit in court to enjoin infringement or other misuse of intellectual property rights. Applicable Law by accessing or using the GarejiShop App or any Vehicle Services, you agree that the Federal Arbitration Act, applicable federal law, and the laws of the State the Company is domiciled without giving effect to any choice of laws principles that would require the application of the laws of a different country or state, will govern these Terms of Use and any dispute of any sort that might arise between you and GarejiShop.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'COMPLAINTS OF COPYRIGHT INFRINGEMENT',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "We respect the intellectual property rights of others. We will respond to properly submitted notices of alleged copyright infringement that comply with applicable law. In the event that a person or entity has a good faith belief that any materials provided through the GarejiShop App or in connection with the Services infringe upon that person's or entity's copyright or other intellectual property right (such person or entity, a 'Complainant') and sends to us a properly submitted copyright notice as indicated below, we will investigate, and if we determines, in our discretion, that the material is infringing, we will remove the content. All notices claiming an infringement of copyright rights must contain the following: (i) identification of the intellectual property right that is allegedly infringed (all relevant registration numbers, or a statement concerning the Complainant's ownership of the work, should be included); (ii) a statement specifically identifying the location of the infringing material, with enough detail that we may find it (please note it is not sufficient to merely provide a top level URL); (iii) the complete name, address, telephone number and e-mail address of Complainant; (iv) a statement that Complainant has a good faith belief that the use of the allegedly infringing material is not authorized by the owner of the rights, or its agents, or by law; (v) a statement that the information contained in the notification is accurate, and under the penalty of perjury, Complainant is authorized to act on behalf of the owner of the copyright or other property rights that are allegedly infringed; and (vi) a physical or electronic signature of a person authorized to act on behalf of the owner of the intellectual property rights that are allegedly being infringed. GarejiShop's contact information for notice of alleged copyright infringement is via email: b.aviles@garejishop.com ",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'NOTICE',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "GarejiShop may give notice by means of a general notice through the GarejiShop App, electronic mail to your email address in your Account, or by written communication sent by first class mail or pre-paid post to your address in your Account. Such notice shall be deemed to have been given upon the expiration of 48 hours after mailing or posting (if sent by first class mail or pre-paid post) or 12 hours after sending (if sent by email). You may give notice to GarejiShop, with such notice deemed given when received by GarejiShop, at any time by first class mail to GarejiShop  Office address at Urb. Bayamon Gardens H35 Calle 15 Bayamón PR 00957",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    ' MISCELLANEOUS ',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "You may not assign these Terms without GarejiShop's prior written approval. GarejiShop may assign these Terms without your consent to: (i) a subsidiary or affiliate; (ii) an acquirer of GarejiShop's equity, business or assets; or (iii) a successor by merger. Any purported assignment in violation of this section shall be void. No joint venture, partnership, employment, or agency relationship exists between you, GarejiShop or any Technician as a result of this Agreement or use of the Services. If any provision of these Terms is held to be invalid or unenforceable, such provision shall be struck and the remaining provisions shall be enforced to the fullest extent under law. GarejiShop's failure to enforce any right or provision in these Terms shall not constitute a waiver of such right or provision unless acknowledged and agreed to by GarejiShop in writing.",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    ' Contacting Us ',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Text(
                  "If you have any questions about this Terms of Service or our privacy practices, you may contact us at b.aviles@garejishop.com",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff777777),
                      letterSpacing: -0.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text(
                    'UPDATED: OCTOBER 20, ',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
SizedBox(width: 20,),
                  Text(
                    '2022',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 39,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff2F80ED)),
                    child: Center(
                      child: Text(
                        "I accept",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 39,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF6F6F6)),
                    child: Center(
                      child: Text(
                        "I decline",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
