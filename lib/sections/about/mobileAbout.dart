import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/customTextHeading.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nA Propo de moi"),
          CustomSectionSubHeading(text: "Apprendre à me connaître :)"),
          // Image.asset(
          //   'assets/mob.png',
          //   height: height * 0.27,
          // ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Qui je suis ?",
              style: GoogleFonts.montserrat(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
            "Je suis Célestin Deal élève ingénieur par apprentissage en informatique.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "Après 2 baccalauréat en 4 ans, un DUT GEII, 2 Stages volontaires en programmation Mobile Flutter/Dart, 2 voyages linguistiques anglophones et une application créée, j'ai finalement réussi à intégrer une école d'ingénieur en alternance. Grâce à mon parcours atypique j'ai su développer des compétences opérationnelles, mais aussi un fort sens de la résilience.",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900], width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Mes téchnologie:",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.015),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < kTools.length / 2; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          Row(
            children: [
              for (int i = kTools.length ~/ 2; i < kTools.length; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900], width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          // AboutMeMetaData(
          //   data: "Nom",
          //   information: "Deal Célestin",
          //   alignment: Alignment.centerLeft,
          // ),
          // AboutMeMetaData(
          //   data: "Email",
          //   information: "celestindeal42@gmail.com",
          //   alignment: Alignment.centerLeft,
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: OutlinedCustomBtn(
          //             btnText: "Resume",
          //             onPressed: () {
          //               kIsWeb
          //                   ? html.window.open(
          //                       'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE',
          //                       "pdf")
          //                   : launchURL(
          //                       'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE');
          //             }),
          //       ),
          //       Container(
          //         width: width * 0.2,
          //         decoration: BoxDecoration(
          //           border: Border(
          //             bottom: BorderSide(color: Colors.grey[900], width: 2.0),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Row(
          //   children: [
          //     for (int i = 0; i < kCommunityLogo.length; i++)
          //       CommunityIconBtn(
          //         icon: kCommunityLogo[i],
          //         link: kCommunityLinks[i],
          //         height: _communityLogoHeight[i],
          //       ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
