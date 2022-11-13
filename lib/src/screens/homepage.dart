import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:untitled15/src/widgets/BottomCartSheet.dart';
import 'package:untitled15/src/widgets/ItemsWidgets.dart';
import 'package:untitled15/src/widgets/PopularItemsWidgets.dart';
import 'package:untitled15/src/widgets/caregorieswidgets.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20,left: 15,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,
                    size: 30,
                    color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                          borderRadius:BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 2
                          )
                        ]
                      ),
                      child: Badge(
                        badgeColor: Colors.red,
                        padding: EdgeInsets.all(6),
                        badgeContent: Text('6',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        ),
                        child: InkWell(
                          onTap: () {
                            showSlidingBottomSheet(
                              context,
                              builder:(context){
                            return SlidingSheetDialog(
                              elevation: 8,
                              cornerRadius: 16,
                              builder: (context,state){
                                return BottomCartSheet();
                              }
                            );

                            },);

                            },


                          child: Icon(Icons.add_shopping_cart,
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
                    Text('Welcome',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                    Text('What do you want buy?',
                    style: TextStyle(
                      fontSize: 20,color: Colors.white
                    ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal:20 ,vertical: 10),
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
                       border: InputBorder.none
                     ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




