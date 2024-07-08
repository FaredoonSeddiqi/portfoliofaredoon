import 'package:flutter/material.dart';
import 'package:portfolio/widget/expitem.dart';
import 'package:portfolio/widget/responsive.dart';

class ExperienceSection extends StatelessWidget {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildHeader(),
          SizedBox(height: 16),
          ExperienceItem(
            title: 'Flutter Developer',
            company: 'Cloudtek i-10/3',
            location: 'Islamabad - Pakistan',
            dateRange: 'Nov 2022 - Present',
          ),
          SizedBox(height: 10),
          ExperienceItem(
            title: 'React/React Native Developer',
            company: 'Cloudtek i-10/3',
            location: 'Islamabad - Pakistan',
            dateRange: 'Jan 2023 - Present',
          ),
          SizedBox(height: 10),
          ExperienceItem(
            title: 'Tech Call Assistant',
            company: 'Qubit I-10/3',
            location: 'Islamabad - Pakistan',
            dateRange: 'Jan - May 2024',
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Container(
      width: 800,
      child: Column(
        children: [
          _buildHeader(),
          SizedBox(height: 16),
          ExperienceItem(
            title: 'Flutter Developer',
            company: 'Cloudtek i-10/3',
            location: 'Islamabad - Pakistan',
            dateRange: 'Nov 2022 - Present',
          ),
          SizedBox(height: 8), // Reduce the spacing
          ExperienceItem(
            title: 'React/React Native Developer',
            company: 'Cloudtek i-10/3',
            location: 'Islamabad - Pakistan',
            dateRange: 'Jan 2023 - Present',
          ),
          SizedBox(height: 8), // Reduce the spacing
          ExperienceItem(
            title: 'Tech Call Assistant',
            company: 'Qubit I-10/3',
            location: 'Islamabad - Pakistan',
            dateRange: 'Jan - May 2024',
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.work_outline, color: Colors.white, size: 24),
            SizedBox(width: 8),
            Text(
              'Experience',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
