import 'package:flutter/material.dart';

class Terms_Conditions extends StatelessWidget {
  const Terms_Conditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Terms & Conditions',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
        children: [
          RichText(
              text: TextSpan(
                  text:
                      '1) Introduction This following sets out the terms and conditions on which you may use the content on business-standard.com website,\n'
                      '   business-standard.com’s mobile browser site,\n'
                      '   Business Standard instore Applications and other digital publishing services (www.smartinvestor.in,\n'
                      '   www.bshindi.com and www.zenzzed.com) owned by Business Standard Private Limited,\n'
                      '   all the services herein will be referred to as Business Standard Content Services.\n '

                      '2) Registration Access and Use We welcome users to register on our digital platforms.\n'
                      '   We offer the below mentioned registration services which may be subject to change in the future.\n'
                      '   All changes will be appended in the terms and conditions page and communicated to existing users by email.\n '
                      '   Registration services are offered for individual subscribers only.\n'
                      '   If multiple individuals propose to access the same account or for corporate accounts kindly contact or write in to us.\n'
                      '   Subscription rates will vary for multiple same time access.\n'
                      '   The nature and volume of Business Standard content services you consume on the digital platforms will vary according to the type of registration you choose,\n'
                      '   on the geography you reside or the offer you subscribe to.\n '
                      '   a) Free Registration\n'
                      '   b) Premium Registration\n'
                      '   c) Special Offers\n'
                      '   d) Combo registrations with partners The details of the services and access offered for each account have been listed on www.business-standard.com/subscription-cart/product We may in exceptional circumstances cease to provide subscription services.\n'
                      '   We will give you at least 7 days notice of this, if possible. If we do so, then we will have no further obligation to you.\n '

                      '3) Privacy Policy and Registration All information received by us from your registration on business-standard.com or\n '
                          'other digital products of Business Standard will be used by Business Standard in accordance with our Privacy Policy.\n'
                      '   Kindly read the below mentioned details.\n'
                      '   On registration, we expect you to provide Business Standard with an accurate and complete information of the compulsory fields.\n'
                      '   We also expect you to keep the information secure,\n '
                      '   specifically access passwords and payment information.\n'
                      '   Kindly update the information periodically to keep your account relevant.\n '
                      '   Business Standard will rely on any information you provide to us.\n '
                      '   Each registration is for a single user only. On registration, \n'
                      '   you will choose a user name and password ("ID").\n '
                      '   You are not allowed to share your ID or give access to your account to anyone else. \n'
                      '   Business Standard Premium subscription does not allow multiple users on a network or within an organization to use the same ID.\n'
                      '   On knowledge, Business Standard may cancel or suspend your access to Business Standard premium services if it comes across you sharing your personal access without further obligation to you.\n'
                      '   You are responsible for all the use of business-standard.com premium service made by you or anyone else using your ID and for preventing unauthorised use of your ID.\n'
                      '   If you believe there has been any breach of security such as the disclosure, theft or unauthorised use of your ID or any payment information,\n'
                      '   you must notify Business Standard immediately by e-mailing us at assist@bsmail.in.\n '
                      '   We recommend that you do not select an obvious user password (such as your name) and that you change it regularly.',
                  style: TextStyle(color: Colors.black)),)
        ],
      ),
      ),
    );
  }
}
