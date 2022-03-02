import 'package:flutter/material.dart';
import 'package:hyouka/main.dart';
import 'package:hyouka/pages/login/login_dekstop.dart';
import 'package:hyouka/pages/login/login_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LoginMobile(),
      desktop: LoginDekstop(),
    );
  }
}
