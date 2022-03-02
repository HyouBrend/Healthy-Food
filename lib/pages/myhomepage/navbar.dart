import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyouka/pages/about/about.dart';
import 'package:hyouka/pages/login/login.dart';
import 'package:hyouka/pages/shop/ui/shop_page.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1300) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 950 && constraints.maxWidth < 1300) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'FoodHealth',
              style: GoogleFonts.badScript(
                fontWeight: FontWeight.bold,
                color: Color(0xff9E65C1),
                fontSize: 40,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ShopPage();
                    },
                  ),
                );
              },
              child: Text(
                'Shop',
                style: GoogleFonts.convergence(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9E65C1),
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutPage();
                    },
                  ),
                );
              },
              child: Text(
                'About',
                style: GoogleFonts.convergence(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9E65C1),
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            MaterialButton(
              color: Color(0xff9E65C1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text(
                "Login",
                style: GoogleFonts.convergence(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              'FoodHealth',
              style: GoogleFonts.badScript(
                fontWeight: FontWeight.bold,
                color: Color(0xff9E65C1),
                fontSize: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ShopPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Shop',
                      style: GoogleFonts.convergence(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9E65C1),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AboutPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'About',
                      style: GoogleFonts.convergence(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9E65C1),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    color: Color(0xff9E65C1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.convergence(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
