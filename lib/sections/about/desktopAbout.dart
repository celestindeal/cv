import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/adaptiveText.dart';
import 'package:folio/widget/customTextHeading.dart';
import 'package:folio/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height - 50,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\n A Propo de moi"),
          CustomSectionSubHeading(text: "Apprendre à me connaître :)"),
          SizedBox(height: 30.0),
          Row(
            children: [
              // Expanded(
              //   child: Image.asset(
              //     'assets/web.png',
              //     height: height * 0.7,
              //   ),
              // ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Qui je suis ?",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.025),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "Je suis Célestin Deal élève ingénieur par apprentissage en informatique.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Après 2 baccalauréat en 4 ans, un DUT GEII, 2 Stages volontaires en programmation Mobile Flutter/Dart, 2 voyages linguistiques anglophones et une application créée, j'ai finalement réussi à intégrer une école d'ingénieur en alternance. Grâce à mon parcours atypique j'ai su développer des compétences opérationnelles, mais aussi un fort sens de la résilience.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: Colors.grey[500],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[800], width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Mes téchnologie:",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.018),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < kTools.length; i++)
                            ToolTechWidget(
                              techName: kTools[i],
                            ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Mes outils:",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.018),
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < koutil.length; i++)
                            ToolTechWidget(
                              techName: koutil[i],
                            ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[800], width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     AboutMeMetaData(
                      //       data: "Nom",
                      //       information: "Deal Célestin",
                      //     ),
                      //     AboutMeMetaData(
                      //       data: "Email",
                      //       information: "celestindeal42@gmail.com",
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: OutlinedCustomBtn(
                      //         onPressed: () {
                      //           html.window.open(
                      //               'https://drive.google.com/file/d/1GF-wtbu2ob_Uxhw2In2QA8QiYi3XjCj1/view?usp=sharing',
                      //               "pdf");
                      //         },
                      //         btnText: "Resume",
                      //       ),
                      //     ),
                      //     Container(
                      //       width: width * 0.05,
                      //       decoration: BoxDecoration(
                      //         border: Border(
                      //           bottom: BorderSide(
                      //               color: Colors.grey[900], width: 2.0),
                      //         ),
                      //       ),
                      //     ),
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
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
