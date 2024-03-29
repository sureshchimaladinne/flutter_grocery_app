import 'package:flutter/material.dart';

class ItemsWidgets extends StatelessWidget {
  const ItemsWidgets({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            crossAxisSpacing: 10,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            shrinkWrap: true,
            children: [
              for (int i = 1; i < 40; i++)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ]),
                  child: Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              "itempage",
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/images/$i.jpeg',
                              height: 110,
                              width: 110,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          // alignment: Alignment.centerLeft,
                          child: Text(
                            'Item title',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Fressh Fruit',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Rs.35",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
