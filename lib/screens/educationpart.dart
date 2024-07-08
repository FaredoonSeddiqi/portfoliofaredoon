import 'package:flutter/material.dart';
import 'package:portfolio/widget/cardeducat.dart';
import 'package:portfolio/widget/responsive.dart';

class EductPart extends StatefulWidget {
  
  const EductPart({super.key});

  @override
  State<EductPart> createState() => _EductPartState();
}

class _EductPartState extends State<EductPart> {
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
      children: [
       const SizedBox(height: 20),
      Container(height: 5, width: 300, color: const Color.fromARGB(198, 71, 249, 76)),
      const SizedBox(height: 10),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CardEducation(
              head: 'BS Computer Science',
              subhead: 'International Islamic University, Islamabad \n - Pakistan',
              date: '2018 - Present'),
          CardEducation(
              head: 'Intermediate in Computer Science',
              subhead: 'Punjab College, Blue Area Islamabad \n - Pakistan',
              date: '2016 - 2018'),
        ],
      ),
      const SizedBox(height: 10),
      Container(height: 5, width: 300, color: const Color.fromARGB(198, 71, 249, 76)),
      ],
    ));
  }

  Widget _buildDesktopLayout() {
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Container(
            height: 5, width: 1000, color: Color.fromARGB(198, 71, 249, 76)),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cast_for_education,
              color: Colors.white,
              size: 60,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Education',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardEducation(
                head: 'BS Computer Science',
                subhead: 'International Islamic University,Islamabad-Pakistan',
                date: '2018-2022'),
            SizedBox(
              width: 200,
            ),
            CardEducation(
                head: 'Information and Communication Technologies',
                subhead:
                    'National Institute of Management and Administration  ',
                date: '2016-2018'),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            height: 5, width: 1000, color: Color.fromARGB(198, 71, 249, 76)),
      ],
    ));
  }
}
