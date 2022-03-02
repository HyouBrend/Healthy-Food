import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class LoginDekstop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MyHomePage();
                },
              ),
            );
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: double.infinity,
                height: 650,
                child: Padding(
                  padding: EdgeInsets.all(35),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: GoogleFonts.convergence(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9E65C1),
                                  fontSize: 40,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              BuildCustomTextField(
                                  'Email Addres', 'email@example.com', false),
                              SizedBox(
                                height: 25,
                              ),
                              BuildCustomTextField(
                                  'Password', 'Insert your password', true),
                              SizedBox(
                                height: 25,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  ),
                                ),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25),
                                    ),
                                  ),
                                  onPressed: () {},
                                  color: Color(0xff9E65C1),
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.convergence(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Don't have an account?",
                                      style: GoogleFonts.convergence(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff9E65C1),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/vektor_login.jpg',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget BuildCustomTextField(String title, String hintText, bool isPassword) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.convergence(
            fontWeight: FontWeight.w300,
            color: Color(0xff9E65C1),
            fontSize: 15,
          ),
        ),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
