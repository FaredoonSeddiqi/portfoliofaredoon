import 'package:flutter/material.dart';
import 'package:portfolio/widget/certificatiwidget.dart';
import 'package:portfolio/widget/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificationPart extends StatefulWidget {
  const CertificationPart({super.key});

  @override
  State<CertificationPart> createState() => _CertificationPartState();
}

class _CertificationPartState extends State<CertificationPart> {
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Could not launch the URL'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.black,
      child: Responsive(
        mobile: _buildMobileLayout(),
        desktop: _buildDesktopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CertificatinCard(
                head:
                    'The Complete 2021 Flutter Developement Bootcamp \n with Dart',
                subhead: 'Udemy',
                date: 'May 2022',
              ),
              CertificatinCard(
                  head:
                      'Flutter+Firebase Build a Grocery App&WEB Admin Panel',
                  subhead: 'Udemy',
                  date: 'Jan 2024'),
              CertificatinCard(
                  head:
                      'JavaScript Algorithms and Data Structures\n (Beta)',
                  subhead: 'freeCodeCamp()',
                  date: 'June 10, 2024',
                  fun: () => launchURL('https://www.freecodecamp.org/certification/FaredoonSeddiqi/javascript-algorithms-and-data-structures-v8'),
                  ),
              CertificatinCard(
                  head:
                      'Resposive Web Design Certificate from Free Code Camp',
                  subhead: 'freeCodeCamp()',
                  date: 'June 10, 2024',
                  fun: () => launchURL('https://www.freecodecamp.org/certification/FaredoonSeddiqi/responsive-web-design'),
                  ),
              CertificatinCard(
                  head:
                      'Introduction to DevOps',
                  subhead: 'GreatLA',
                  date: 'June 2024',
                  fun: () => launchURL('https://olympus.mygreatlearning.com/courses/38652/certificate'),
              
                  )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
            height: 5,
            width: 300,
            color: const Color.fromARGB(198, 71, 249, 76)),
      ],
    ));
  }

  Widget _buildDesktopLayout() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.document_scanner,
                color: Colors.white,
                size: 60,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Certification',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CertificatinCard(
                  head:
                      'The Complete 2021 Flutter Developement Bootcamp \n with Dart',
                  subhead: 'Udemy',
                  date: 'May 2022',
                ),
                CertificatinCard(
                    head:
                         'Flutter  +   Firebase Build a Grocery App&WEB   Admin \nPanel',
                  subhead: 'Udemy',
                  date: 'Jan 2024'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CertificatinCard(
                   head:
                      'JavaScript Algorithms and Data   Structures    (Beta) ',
                  subhead: 'freeCodeCamp()',
                  date: 'June 10, 2024',
                  fun: () => launchURL('https://www.freecodecamp.org/certification/FaredoonSeddiqi/javascript-algorithms-and-data-structures-v8'),
                 
                  
                  ),
              CertificatinCard(
                   head:
                      'Resposive Web Design Certificate from Free Code Camp',
                  subhead: 'freeCodeCamp()',
                  date: 'June 10, 2024',
                  fun: () => launchURL('https://www.freecodecamp.org/certification/FaredoonSeddiqi/responsive-web-design'),
              ),
                  ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 450),
            child: Row(
              children: [
                CertificatinCard(
                   head:
                      'Introduction to DevOps',
                  subhead: 'GreatLA',
                  date: 'June 2024',
                  fun: () => launchURL('https://olympus.mygreatlearning.com/courses/38652/certificate'),

                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 5, width: 1000, color: Color.fromARGB(198, 71, 249, 76)),
        ],
      ),
    );
  }
}
