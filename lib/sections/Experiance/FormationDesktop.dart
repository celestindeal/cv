import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/adaptiveText.dart';
import 'package:folio/widget/customTextHeading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExperianceDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double taille_SizedBox = height * 0.02;

    return Container(
      height: height - 50,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\n Mes Expériences "),
          CustomSectionSubHeading(text: "Un parcours atypique :)"),
          SizedBox(height: 30.0),
          Expanded(
            flex: width < 1230 ? 2 : 1,
            child: Container(
              padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: diplome_anne.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AdaptiveText(
                          experience_anne[index],
                          style: GoogleFonts.montserrat(
                              color: kPrimaryColor, fontSize: height * 0.015),
                        ),
                        AdaptiveText(
                          experience_ecole[index],
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.w400,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        AdaptiveText(
                          experience_nom[index],
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.022,
                            color: Colors.grey[500],
                            height: 2.0,
                          ),
                        ),
                        SizedBox(
                          height: taille_SizedBox,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey[800], width: 2.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: taille_SizedBox,
                        ),
                      ],
                    );
                  }),
            ),
          ),
          Container(
            width: width < 1230 ? width * 0.05 : width * 0.1,
          ),
        ],
      ),
    );
  }
}
