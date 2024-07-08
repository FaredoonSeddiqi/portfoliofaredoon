import 'package:flutter/material.dart';
import 'package:portfolio/widget/infoberow.dart';
import 'package:portfolio/widget/responsive.dart';

class InfoBe extends StatelessWidget {
  const InfoBe({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobilelayout(), desktop: desktoplayout());
  }

  Widget desktoplayout() {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          InfoRow(number: '2', title: 'Years of Experience'),
          SizedBox(
            width: 200,
          ),
          InfoRow(number: '15+', title: 'Clients'),
          SizedBox(
            width: 200,
          ),
          InfoRow(number: '20+', title: 'Projects'),
        ],
      ),
    );
  }

  Widget mobilelayout() {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoRow(number: '2', title: 'Years of Experience'),
              SizedBox(width: 100),
              InfoRow(number: '15+', title: 'Clients'),
            ],
          ),
          SizedBox(height: 16),
          Center(
            child: InfoRow(number: '20+', title: 'Projects'),
          ),
        ],
      ),
    );
  }
}
