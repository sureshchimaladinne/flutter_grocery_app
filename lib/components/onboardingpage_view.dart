import 'package:flutter/material.dart';
import 'package:untitled1/components/roundedbutton.dart';
import 'package:untitled1/screens/Splash_screen.dart';
class Onboardingpage extends StatelessWidget {
   Onboardingpage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.noOfScreen,
    required this.onNextPressed,
    required this.currentScreenNo})
      : super(key: key);
  final Image image;

  final String title;

  final String description;

  final int noOfScreen;

  final Function(int) onNextPressed;

  final int currentScreenNo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  image,
                  const SizedBox(
                 height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedButton(
                  title: "Skip",
                  onPressed: () {
                    openSplash_screen(context);
                  },
                ),
                Row(
                  children: [
                    for (int index = 0; index < noOfScreen; index++)
                      createProgressDots(
                          (index == currentScreenNo) ? true : false)
                  ],
                ),
                RoundedButton(
                  title: "Next",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Splash_Screen()),
                    );
                    onNextPressed(currentScreenNo + 1);
                  },
                )
              ],
            ),
        ],
      ));
  }

  //Create a function to create progress dots
  Widget createProgressDots(bool isActiveScreen) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isActiveScreen ? 15 : 10,
      width: isActiveScreen ? 15 : 10,
      decoration: BoxDecoration(
          color: isActiveScreen ? Colors.green : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }

  //Lets create function to open home screen, same function we will call from skip button too.
  void openSplash_screen(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/Splash_Screen");
  }
}

