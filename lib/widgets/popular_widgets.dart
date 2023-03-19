import 'package:flutter/material.dart';

class PopularItemsWidgets extends StatelessWidget {
  const PopularItemsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10, bottom: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i < 40; i++)
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 6),
                  ]),
                  child: Image.asset('assets/images/$i.jpeg'),
                )
            ],
          ),
        ),
      ],
    );
  }
}
