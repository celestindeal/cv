import 'package:flutter/material.dart';
import 'package:folio/sections/Experiance/FormationDesktop.dart';
import 'package:folio/sections/Experiance/FormationMobile.dart';
import 'package:folio/sections/Experiance/FormationTab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Experiance extends StatefulWidget {
  @override
  _ExperianceState createState() => _ExperianceState();
}

class _ExperianceState extends State<Experiance> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ExperianceMobile(),
      tablet: ExperianceTab(),
      desktop: ExperianceDesktop(), // quand je suis sur un ordinateur
    );
  }
}
