import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_screen.dart';

class Register_Screen extends StatelessWidget {
  Register_Screen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  bool isAlredyUser = false;

  bool isEmailValid(String email) {
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
    return emailValid;
  }

  bool phonenovalid(String phoneno) {
    return RegExp('^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}\$')
        .hasMatch(phoneno);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Register',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          leading: BackButton(),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "First Name",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                          //allow upper and lower case alphabets and space
                          return "Enter Correct Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Padding(padding:EdgeInsets.only(top:298 ,left:20 ,right:20 ,bottom:464 )),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Last Name",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                          //allow upper and lower case alphabets and space
                          return "Enter Correct Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Padding(padding:EdgeInsets.only(top:368 ,left:20 ,right:20 ,bottom:394 )),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Phone number",
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Mobile Number';
                          } else if (!phonenovalid(value)) {
                            return 'Enter Valid Mobile Number';
                          }
                        }
                          ),
                    SizedBox(
                      height: 15,
                    ),
                    //Padding(padding:EdgeInsets.only(top:438 ,left:20 ,right:20 ,bottom:324 )),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email address",
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      validator: (email) {
                        if (isEmailValid(email ?? ""))
                          return null;
                        else
                          return 'Enter a valid email address';
                      },
                    ),
                    SizedBox(
                      height: 35,
                      width: double.infinity,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );

                          if (isAlredyUser) {
                            // Navigator.of(context).push
                            //   (MaterialPageRoute(builder: (context)=>Otp_Verfication()),
                            //   //(Route<dynamic> route) => false
                            // );
                          } else {
                            isAlredyUser = true;
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Home_Screen()),
                              //(Route<dynamic> route) => false
                            );
                          }
                          // if(_formKey.currentState!.validate()) {
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                          color: Colors.black,
                          indent: 10,
                          endIndent: 20,
                          thickness: 2,
                        )),
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Expanded(
                    //         child: Divider(
                    //       color: Colors.black,
                    //       indent: 10,
                    //       endIndent: 20,
                    //       thickness: 2,
                    //     )),
                    //   ],
                    // ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Icon(
                        Icons.apple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(Icons.facebook),
                    ] //Icon(Icons.google),
                        ),
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        'If you have an account?',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Sign In here',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ]),
                  ]),
                ))));
  }
}
