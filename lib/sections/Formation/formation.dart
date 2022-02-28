import 'package:flutter/material.dart';
import 'package:folio/sections/Formation/FormationDesktop.dart';
import 'package:folio/sections/Formation/FormationMobile.dart';
import 'package:folio/sections/Formation/FormationTab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Formation extends StatefulWidget {
  @override
  _FormationState createState() => _FormationState();
}

class _FormationState extends State<Formation> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FormationMobile(),
      tablet: FormationTab(),
      desktop: FormationDesktop(), // quand je suis sur un ordinateur
    );
  }
}
