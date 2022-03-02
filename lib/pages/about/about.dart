import 'package:flutter/material.dart';
import 'package:hyouka/pages/about/about_dekstop.dart';
import 'package:hyouka/pages/about/about_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      desktop: AboutDekstop(),
    );
  }
}
