import 'package:flutter/material.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash.png',
              height: 300,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
            child: Text('By Fresh Groceries',
              style: TextStyle(
                color: Colors.green,
                fontSize: 35
              ),
            ),
              ),
            SizedBox(height: 50,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "homepage");
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green
                ),

                child: Text('Get Started',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

splash_screenIcon() {
}
