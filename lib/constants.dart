import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png"
];

const kSocialLinks = [
  "https://www.instagram.com/celestindeal/",
  "https://www.linkedin.com/in/c%C3%A9lestin-deal-772ba9194",
  "https://github.com/celestindeal"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = [
  'assets/cui.png',
  'assets/flutterIsl.png',
  'assets/dsc.png'
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/"
];

// Tools & Tech
final kTools = ["Flutter", "Dart", "Python", "Java", "C", "HTML", "CSS"];
final koutil = ["Git", "VS Code", "Android Studio", "FileZilla"];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "Full App Development",
  "UI/UX Designing",
  "Rapid Prototyping",
  "Technical Blog Writing",
  "Open Source - GitHub",
];

// final kServicesDescriptions = [
//   "For now, I can only develop Android Apps using Flutter, that's because I don't own a MacBook right now so can't test or debug apps for iOS. Hopefully this missing piece will be filled soon :)",
//   "Although I'm mainly a flutter developer but I do care about the UI/UX for my client. Hence, I also do UI designing for applications. So, feel free to ask me for getting you UI/UX for your apps",
//   "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
//   "I have been writing technical blogs on Medium for over a year now. So, I can get you technical blogs with awesome header images with interesting topics.\nMy Medium profile @mCélestindev",
//   "Working as open source contributor on GitHub with 200+ stars and numerous forks on various projects liked and shared by other developers.\nMy GitHub Profile @mhmzdev",
// ];

final kServicesDescriptions = [
  "Android app development via Flutter\n- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps integration and more...!",
  "Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness\n- Promo Videos and more..!",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
  "Technical Blog writing\n- Medium blogs\n- Soothing header images\n- SEO friendly\n- Researched topics and more..!",
  "Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
];

final kServicesLinks = [
  "https://www.fiverr.com/Célestin6shakeel/be-your-mobile-app-developer-via-flutter",
  "https://www.fiverr.com/Célestin6shakeel/get-you-modern-ui-design-using-adobe-xd",
  "https://www.fiverr.com/Célestin6shakeel/be-your-mobile-app-developer-via-flutter",
  "https://mCélestindev.medium.com",
  "https://github.com/mhmzdev"
];

// projects
final kProjectsBanner = [
  "assets/projects/meetball.png",
  "assets/projects/ferme.png",
  "assets/projects/photo.jpg",
  "assets/projects/fanuc.png",
  "assets/projects/pdf.png",
];

final kProjectsIcons = [
  "assets/projects/logo_meetball.jpg",
  "assets/projects/logo_ferme.png",
  "assets/projects/logo_photo.jpg",
  "assets/projects/logo_fanuc.png",
  "assets/projects/logo_pdf.png",
];

final kProjectsTitles = [
  "MeetBall",
  "La Ferme Deal",
  "Photo search",
  "Olympiades Fanuc",
  "PDF",
];

final kProjectsDescriptions = [
  "Meetball avait pour objectif d’être une application de rencontre sportive destinée au basket.",
  "Le projet du site web la ferme deal.",
  "Ce projet a pour but d’aider l’utilisateur à retrouver ces photos dans sa galerie.",
  "Lors de mon DUT GEII j'ai été finaliste aux olympiades Fanuc.",
  "Ce projet doit proposer une application qui prend des photos qui sont recevables devant la justice.",
];

final kProjectsLinks = [
  "https://gitlab.com/DealCelestin/meetball",
  "https://www.lafermedeal.fr/#/",
  "https://gitlab.com/DealCelestin/photo_search",
  "https://olympiades-fanuc.com/",
  "https://gitlab.com/DealCelestin/pdf",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Lyon, France",
  "(+33) 6 13 29 97 69",
  "celestindeal42@gmail.com"
];
// Page diplome
final diplome_anne = [
  "2021-2024",
  "2020-2020",
  "Août 2019 et Août 2020",
  "2018-2020",
  "2017-2018"
];

final diplome_ecole = [
  "Polytechnique Lyon",
  "École Nationale Supérieure d’Électronique, Informatique, Télécommunications, Mathématiques et Mécanique de Bordeaux",
  "Active centre of english training et Malta Lingua",
  "Université Clermont Auvergne",
  "CFAI Loire Pôle formation des industries technologiques",
];

final diplome_nom = [
  "Diplôme d'ingénieur, Informatique par Apprentissage",
  "Diplôme d'ingénieur, Informatique",
  "Validation du niveau B1",
  "Diplôme Universitaire de Technologie en Génie Électrique et Informatique Industrielle",
  "Baccalauréat Professionnel Électrotechnique Énergie Équipements Communicants (Mention Très Bien) ",
];

// page experience

final experience_anne = [
  "2021-2024",
  "Début 2021",
  "Février 2020 et Octobre 2021",
  "2020 3 mois",
  "2017-2018"
];

final experience_ecole = [
  "Apprenti ingénieur DevOps",
  "Vial Gaydon, Technicien maintenance",
  "Création D'entreprise",
  "Stagiaire, Dévelopeur mobile",
  "Apprenti Électrotechnicien",
];

final experience_nom = [
  "Orange",
  "Vial Gaydon",
  "Meetball, Application de rencontre sportive",
  "Applilogik, Apprentissage du Framework Flutter",
  "Jeannet Débit, Installation et maintenance des robots de traite Delaval et repousse fourrage.",
];
