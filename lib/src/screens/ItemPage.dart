import 'package:flutter/material.dart';
import 'package:untitled15/src/widgets/BottomBar.dart';
class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
             margin: EdgeInsets.all(15),
                height: 350,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                 // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('assets/images/2.png')
                  )
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                   padding:EdgeInsets.only(top: 10,bottom: 15,),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Text('Fruit Title',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                     Row(
                   children: [
                     Container(
                     padding:EdgeInsets.all(15),
                       decoration: BoxDecoration(
                         color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                         boxShadow:[BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 2,
                           blurRadius: 8,
                         offset: Offset(0,3),
                         ),
                         ]
                       ),
                      // child: Icon(CupertinoIcons.minus),
                       ),

                   ],
                     ),
                   ],
                 ),
               ),
               Row(
                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Icon(
                       Icons.star,
                     color: Colors.amber,
                     size: 30,
                   ),
                   Text('4.8 (2790)',
                     style: TextStyle(
                         fontSize: 16,
                         color: Colors.white,
                       fontWeight: FontWeight.bold
                     ),)
                 ],
               ),
               Padding(padding: EdgeInsets.symmetric(vertical: 20),
               child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Description:',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                   color: Colors.white
                   ),),
                   SizedBox(height: 10,),
                   Text("The fibre content in oranges can affect digestion, trigger abdominal cramps, and lead to diarrhoea; but eating one orange a day can boost your immunity,   ",
                   style:TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold) ,
                  textAlign: TextAlign.justify,
                   ),
                 ],
               ),
               ),
               Row(
                 children: [
                   Text('Delivery Time:',
                   style: TextStyle(
                     fontSize: 19,
                     fontWeight: FontWeight.bold,color: Colors.white
                   ),
                   ),
                   SizedBox(width: 5,),
                   Spacer(),
                   Icon(Icons.timelapse,color: Colors.white,),
                   Text('20Minutes',
                   style: TextStyle(fontSize: 16,
                   fontWeight: FontWeight.bold,
                     color: Colors.white
                   ),
                   ),
                 ],
               )

             ],
           ),

              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomBar(),
    );
  }
}




