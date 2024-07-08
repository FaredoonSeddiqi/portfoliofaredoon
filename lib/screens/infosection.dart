import 'package:flutter/material.dart';
import 'package:portfolio/widget/infocard.dart';
import 'package:portfolio/widget/responsive.dart';

class InfoCardSection extends StatefulWidget {
  const InfoCardSection({super.key});

  @override
  State<InfoCardSection> createState() => _InfoCardSectionState();
}

class _InfoCardSectionState extends State<InfoCardSection> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: _buildMobileLayout(), desktop: _buildDesktopLayout());
  }

  Widget _buildDesktopLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InfoCard(
          icon: Icons.design_services,
          title: 'DESIGN',
          description:
              'Mobile app without interactive and attractive design is like a car without an engine. I design mobile app with attractive and interactive design.',
        ),
        SizedBox(
          width: 20,
        ),
        InfoCard(
          icon: Icons.developer_mode,
          title: 'DEVELOP',
          description:
              'I useFlutter for cross platform mobile app development due its performance, speed and beautiful UI. Software development principles are followed to make code clean and maintainable.',
        ),
        SizedBox(
          width: 20,
        ),
        InfoCard(
          icon: Icons.bug_report,
          title: 'TEST',
          description:
              'I write unit tests for every single line of code to make sure that the code is working as expected. I also write integration tests to make sure that the app is working as expected.',
        ),
        SizedBox(
          width: 20,
        ),
        InfoCard(
          icon: Icons.cloud_upload,
          title: 'DEPLOY',
          description:
              'I deploy the app to Google Play Store and Apple App Store. I also promote the app on social media to make sure that the app is visible to the target audience.',
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoCard(
                icon: Icons.design_services,
                title: 'DESIGN',
                description:
                    'Mobile app without interactive and attractive design is like a car without an engine. I design mobile app with attractive and interactive design.',
              ),
             
              InfoCard(
                icon: Icons.developer_mode,
                title: 'DEVELOP',
                description:
                    'I useFlutter for cross platform mobile app development due its performance, speed and beautiful UI. Software development principles are followed to make code clean and maintainable.',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              InfoCard(
                icon: Icons.bug_report,
                title: 'TEST',
                description:
                    'I write unit tests for every single line of code to make sure that the code is working as expected. I also write integration tests to make sure that the app is working as expected.',
              ),
             
              InfoCard(
                icon: Icons.cloud_upload,
                title: 'DEPLOY',
                description:
                    'I deploy the app to Google Play Store and Apple App Store. I also promote the app on social media to make sure that the app is visible to the target audience.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
