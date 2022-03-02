import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class AboutDekstop extends StatelessWidget {
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
                height: 800,
                child: Padding(
                  padding: EdgeInsets.all(35),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'About',
                                style: GoogleFonts.convergence(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9E65C1),
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(height: 50),
                              Text(
                                "The key to good health is good nutrition, so FoodHealth is your complete guide to healthy eating and getting the best nutrition. We don’t believe in diets. We do believe in healthy eating every day. There are many ways to achieve this, and different approaches work for different people. Changes to healthier eating should be practical, enjoyable and sustainable, not restrictive and unsociable. \n\nOur recipes section is full of delicious, nutrition packed dishes with affordable ingredients and simple preparation. Our advice section has accurate, well researched health information you can rely on, including some very useful downloadable resources. Our shopping section helps you make informed choices as to which products are best for you, or your family. You are investing in your health when you subscribe to FoodHealth.",
                                style: GoogleFonts.convergence(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff9E65C1),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/vektor_about.jpg',
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
}
