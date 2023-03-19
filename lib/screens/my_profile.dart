import 'package:flutter/material.dart';
import 'package:untitled1/configer/colors.dart';

class My_Profilescreen extends StatefulWidget {
  const My_Profilescreen({Key? key}) : super(key: key);

  @override
  State<My_Profilescreen> createState() => _My_ProfilescreenState();
}

class _My_ProfilescreenState extends State<My_Profilescreen> {
  Widget listTile({required IconData icon, required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // var userData = widget.userProvider.currentUserData;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
       // leading: Image.asset('assets/images/suresh_images.jpg'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  color: primaryColor,
                ),
                Container(
                  height: 548,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 250,
                            height: 80,
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chimaladinne Suresh',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          // color: Colors.black
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('sureshchimaladinne9063@gmail.com'),
                                    ],
                                  ),
                                ),
                                CircleAvatar(

                                  radius: 15,
                                  backgroundColor: primaryColor,
                                  child: CircleAvatar(
                                    radius: 12,
                                    child: Icon(
                                      Icons.edit,
                                      color: primaryColor,
                                    ),
                                    backgroundColor: scaffoldBackgroundColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      listTile(icon: Icons.shop_outlined, title: "My Orders"),
                      listTile(
                          icon: Icons.location_on_outlined,
                          title: "My Delivery Address"),
                      listTile(
                          icon: Icons.person_outline, title: "Refer A Friends"),
                      listTile(
                          icon: Icons.file_copy_outlined,
                          title: "Terms & Conditions"),
                      listTile(
                          icon: Icons.policy_outlined, title: "Privacy Policy"),
                      listTile(icon: Icons.add_chart, title: "About"),
                      listTile(
                          icon: Icons.exit_to_app_outlined, title: "Log Out"),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: primaryColor,
                child: CircleAvatar(
                  child: Image.asset('assets/images/suresh_image.jpg',),
                    backgroundImage: NetworkImage(
                      "https://s3.envato.com/files/328957910/vegi_thumb.png",
                    ),
                    radius: 45,
                    backgroundColor: scaffoldBackgroundColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
