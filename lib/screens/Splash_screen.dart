// import 'package:flutter/material.dart';
// import 'package:untitled1/screens/login.dart';
// class Splash_Screen extends StatelessWidget {
//   const Splash_Screen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Organic Grocery'),
//            SizedBox(height: 30,),
//            Image.asset('assets/images/splash.png'),
//           SizedBox(height: 50,),
//           ElevatedButton(
//               onPressed:(){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) =>  Login_Screen()),
//                 );
//               },
//               child:Text('Get Started',)),
//         ],
//       ),
//     );
//   }
// }
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/0nboarding_screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  bool _isVisible = false;

  _Splash_ScreenState() {
    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => OnboardingScreen()),
            (route) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(100),
          child: Column(
            children: [
              Text(
                'Organic Grocery',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/splash.png',
              ),
              SizedBox(
                height: 250,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '@CHIMALADINNE SURESH all right reserved',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              )
            ],
          ),
        )));
  }
}
