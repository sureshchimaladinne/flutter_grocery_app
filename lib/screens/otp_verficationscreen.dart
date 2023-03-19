import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:untitled1/screens/register.dart';

class Otp_Verfication extends StatelessWidget {
  Otp_Verfication({Key? key}) : super(key: key);
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('OTP Verfication'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enter the verification code we just sent you on your email address.',
                        style: TextStyle(
                            // fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                        //textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Column(
                  children: <Widget>[
                    OTPTextField(
                        controller: otpController,
                        length: 4,
                        width: 300,
                        fieldWidth: 50,
                        style: TextStyle(fontSize: 30),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.underline,
                        onChanged: (pin) {
                          print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        }),
                    SizedBox(height: 50.0),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "If you didn't receive a code! ",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                          TextSpan(
                            text: 'Resend',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      child: ElevatedButton(
                          onPressed: () {
                            print("Floating button was pressed.");
                            otpController.clear();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Register_Screen()),
                              //(Route<dynamic> route) => false
                            );
                          },
                          // if(_formKey.currentState!.validate()) {

                          // padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Text(
                            'VERIFY',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 20))),
                    ),
                  ],
                ),
              ])),
        ));
  }
}
