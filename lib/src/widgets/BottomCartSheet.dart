import 'package:flutter/material.dart';
class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        height: 600,
        child: Column(
          children: [
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                   for(int i=1;i<8;i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8
                          )
                        ]
                      ),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.all(10),
                            child: Image.asset('assets/images/$i.png',
                            height: 80,
                              width:80 ,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 8),
                             alignment: Alignment.centerLeft,
                              child: Text('Iteam',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                                ),
                              ),
                            ),
                              Container(
                                margin: EdgeInsets.only(bottom: 8),
                                alignment: Alignment.centerLeft,
                                child: Text('\$20',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(padding:EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Icon(Icons.disabled_by_default,color: Colors.green,
                              ),
                              SizedBox(height: 25,),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 8,
                                        )
                                      ]
                                    ),
                                    child: Icon(Icons.exposure_minus_2_outlined),
                                  )
                                ],
                              )
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical:10 ,horizontal: 15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                     color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 8,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Delivery Fee',
                                style: TextStyle(
                                    fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                                ),
                              ),
                              Text('\$20',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green
                                ),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sub Total',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green
                                ),
                              ),
                              Text('\$10',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green
                                ),)
                            ],
                          ),
                        ],
                      ),
                    ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 8,
                  color: Colors.grey.withOpacity(0.5),
                )
              ]
          ),
          child: Column(
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('\$30',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green
            ),
          ),
             InkWell(
               onTap: () {},
               child: Container(
                 padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                 decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: Text('Check Out',
                   style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                   ),
                 ),
               ),
             )
       ] ),
          ],
                ),
              ),
           ] )
               ),
        ),
      ]
    ),
      ),
    );
  }

  }

