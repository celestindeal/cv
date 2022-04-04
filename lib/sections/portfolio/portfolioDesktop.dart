import 'package:flutter/material.dart';
import 'package:folio/animations/bottomAnimation.dart';
import 'package:folio/widget/customTextHeading.dart';
import 'package:folio/widget/projectCard.dart';
import 'package:folio/constants.dart';

class PortfolioDesktop extends StatefulWidget {
  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

ScrollController control;

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  void initState() {
    control = ScrollController();
    super.initState();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height - 50,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nPortfolio"),
          CustomSectionSubHeading(
              text:
                  "Voici quelques exemples de projets sur lesquels j'ai travaillé :)\n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: Stack(
              children: [
                ListView.separated(
                  controller: control,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return VerticalDivider(
                      color: Colors.transparent,
                      width: width * 0.015,
                    );
                  },
                  itemBuilder: (context, index) {
                    return WidgetAnimator(
                      child: ProjectCard(
                        cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                        cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                        backImage: kProjectsBanner[index],
                        projectIcon: kProjectsIcons[index],
                        projectTitle: kProjectsTitles[index],
                        projectDescription: kProjectsDescriptions[index],
                        projectLink: kProjectsLinks[index],
                      ),
                    );
                  },
                  itemCount: kProjectsBanner.length,
                ),
                Positioned(
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      double jumpe = control.position.pixels + width * 0.4;
                      if (jumpe > control.position.maxScrollExtent) {
                        jumpe = control.position.maxScrollExtent;
                      }

                      control.animateTo(jumpe,
                          duration: Duration(seconds: 1), curve: Curves.ease);
                    },
                    child: Container(
                        width: width < 1200 ? height * 0.32 : height * 0.1,
                        height: width > 1200 ? height * 0.45 : width * 0.21,
                        color: Colors.black45,
                        child: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      double jumpe = control.position.pixels - width * 0.4;
                      if (jumpe < control.position.minScrollExtent) {
                        jumpe = control.position.minScrollExtent;
                      }
                      control.animateTo(jumpe,
                          duration: Duration(seconds: 1), curve: Curves.ease);
                    },
                    child: Container(
                        width: width < 1200 ? height * 0.32 : height * 0.1,
                        height: width > 1200 ? height * 0.45 : width * 0.21,
                        color: Colors.black45,
                        child: Icon(Icons.arrow_back_ios_new)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          // OutlinedCustomBtn(
          //     btnText: "See More",
          //     onPressed: () {
          //       launchURL("https://github.com/mhmzdev");
          //     })
        ],
      ),
    );
  }
}
