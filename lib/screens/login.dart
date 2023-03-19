import 'package:flutter/material.dart';
import 'package:untitled1/screens/otp_verficationscreen.dart';

class Login_Screen extends StatelessWidget {
  Login_Screen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  bool checkedValue = false;

  bool checkboxValue = false;

  bool isAlredyUser = false;

  bool isEmailValid(String email) {
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
    return emailValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Login',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Organic Grocery',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter Email',
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (isEmailValid(email ?? ""))
                      return null;
                    else
                      return 'Enter a valid email address';
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter Pasword',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );

                        if (isAlredyUser) {
                          // Navigator.of(context).push
                          //   (MaterialPageRoute(builder: (context)=>VerifyScreen()),
                          //   //(Route<dynamic> route) => false
                          // );
                        } else {
                          isAlredyUser = true;
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Otp_Verfication()),
                            //(Route<dynamic> route) => false
                          );
                        }
                        // if(_formKey.currentState!.validate()) {

                      }
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 100, vertical: 20))),
              ],
            ),
          ),
        ));
  }
}
