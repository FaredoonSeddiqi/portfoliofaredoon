import 'package:flutter/material.dart';
import 'package:portfolio/widget/responsive.dart';

class Intropart extends StatefulWidget {
    final GlobalKey contactKey;
    final GlobalKey portfolioKey;


  const Intropart({super.key, required this.contactKey, required this.portfolioKey});

  @override
  State<Intropart> createState() => _IntropartState();
}

class _IntropartState extends State<Intropart> {
   void _scrollToContact() {
    Scrollable.ensureVisible(widget.contactKey.currentContext!, duration: Duration(seconds: 1));
  }
   void _scrollToPortfolio() {
    Scrollable.ensureVisible(widget.portfolioKey.currentContext!, duration: Duration(seconds: 1));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Responsive(
        mobile: _buildMobileLayout(),
        desktop: _buildDesktopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/sec.png', 
            width: 200, 
          ),
        ),
        SizedBox(height: 6),
        Text(
          'FAREDOON SEDDIQI',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_android, color: Colors.green),
            SizedBox(width: 8),
            Text(
              'Mobile Application Developer',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Hi, I'm Faredoon seddiqi, a skilled Flutter Developer with over 2 years of experience crafting high-quality and contemporary mobile apps in collaboration with cross-functional teams. I hold a degree in Computer Science from the International Islamic University Islamabad. Currently, I'm focused on maintaining, developing, and delivering mobile applications while also mentoring a junior developer. My expertise includes Firebase SDKs, Rest API Integration, Google AdMobs, NodeJS, Android/kotlin/Jetpack, and proficient usage of Git & GitHub.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(height: 16),
        Text(
          "Got a project? Let's talk.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:_scrollToContact,
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'CONTACT',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: _scrollToPortfolio,
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                side: BorderSide(color: Colors.green),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'PORTFOLIO',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FAREDOON SEDDIQI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.phone_android, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    'Mobile Application Developer',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Hi, I'm Faredoon Seddiqi, a skilled Flutter Developer with over 2 years of experience crafting high-quality and contemporary mobile apps in collaboration with cross-functional teams. I hold a degree in Computer Science from the International Islamic University Islamabad. Currently, I'm focused on maintaining, developing, and delivering mobile applications while also mentoring a junior developer. My expertise includes Firebase SDKs, Rest API Integration, Google AdMobs, NodeJS, Android/kotlin/Jetpack, and proficient usage of Git & GitHub.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                "Got a project? Let's talk.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: _scrollToContact,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      'CONTACT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: _scrollToPortfolio,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      side: BorderSide(color: Colors.green),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      'PORTFOLIO',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/sec.png', // Path to your image
          width: 600, // Adjust the size as needed
        ),
      ],
    );
  }
}
