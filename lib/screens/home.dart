import 'package:flutter/material.dart';
import 'package:portfolio/screens/certificationpart.dart';
import 'package:portfolio/screens/educationpart.dart';
import 'package:portfolio/screens/experiencesec.dart';
import 'package:portfolio/screens/header.dart';
import 'package:portfolio/screens/infobe.dart';
import 'package:portfolio/screens/infosection.dart';
import 'package:portfolio/screens/intro.dart';
import 'package:portfolio/screens/skillspart.dart';
import 'package:portfolio/screens/slider.dart';
import 'package:portfolio/widget/contacts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey contactKey = GlobalKey();
  final GlobalKey portfolioKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              HeaderSection(),
              Intropart(contactKey: contactKey, portfolioKey: portfolioKey),
              InfoCardSection(),
              InfoBe(),
              ExperienceSection(),
              SliderPart(),
              EductPart(key: portfolioKey,),
              CertificationPart(),
              SkillsPart(),
              ContactPart(key: contactKey),
            ],
          ),
        ),
      ),
    );
  }
}
