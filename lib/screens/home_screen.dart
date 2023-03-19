import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:untitled1/screens/itempage.dart';
import 'package:untitled1/screens/my_profile.dart';
import 'package:untitled1/screens/otp_verficationscreen.dart';
import 'package:untitled1/screens/terms_conditions.dart';
import 'package:untitled1/widgets/Battomcart_sheet.dart';
import 'package:untitled1/widgets/categorieswidgets.dart';
import 'package:untitled1/widgets/item_widgets.dart';
import 'package:untitled1/widgets/popular_widgets.dart';

class Home_Screen extends StatelessWidget {
  Home_Screen({Key? key}) : super(key: key);
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: BackButton(),
          ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.0,
                1.0
              ],
                  colors: [
                Theme.of(context).primaryColor.withOpacity(0.2),
                Theme.of(context).accentColor.withOpacity(0.5),
              ])),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor,
                    ],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Organic Grocery",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 17, color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_Screen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.shop_outlined,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text(
                  'ReviewCart',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.person_add_alt_1,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text(
                  'My Profile',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => My_Profilescreen()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  "Wishlist",
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.verified_user_sharp,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Verification Page',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Otp_Verfication()),
                  );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.pending_actions_outlined,
                  size: _drawerIconSize,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'Terms & Conditions',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Terms_Conditions( ))
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.copy_outlined,
                ),
                title: Text("Raise a Complaint"),
              ),
              ListTile(
                leading: Icon(
                  Icons.format_quote_outlined,
                ),
                title: Text("FAQs"),
              ),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Support"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Call us:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("91-9063700430"),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text("Mail us:"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "sureshchimaladinne9063@gmail.com",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.green,
      body:  Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20, left: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.all_inbox,
                        size: 30,
                        color: Colors.white,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  blurRadius: 2)
                            ]),
                        child: Badge(
                          badgeColor: Colors.red,
                          padding: EdgeInsets.all(6),
                          badgeContent: Text(
                            '6',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: InkWell(
                            onTap: () {
                              showSlidingBottomSheet(
                                context,
                                builder: (context) {
                                  return SlidingSheetDialog(
                                      elevation: 8,
                                      cornerRadius: 16,
                                      builder: (context, state) {
                                        return BottomCartSheet();
                                      });
                                },
                              );
                            },
                            child: Icon(
                              Icons.add_shopping_cart,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'What do you want buy?',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: EdgeInsets.all(15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search here....",
                              border: InputBorder.none),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.filter_list)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategoriesWidget(),
                      PopularItemsWidgets(),
                      ItemsWidgets(),
                      // Drawer(),
                      // BottomNavagationBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
