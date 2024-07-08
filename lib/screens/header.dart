import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(36.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Se.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () => launchUrl(Uri.parse(
                  'https://github.com/FaredoonSeddiqi/FaredoonSeddiqi/raw/main/FaredoonCVandCoverLetter2.pdf')),
         
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 15, 233, 95), // Background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: Row(
              children: [
                Icon(Icons.remove_red_eye, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  'Resume',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}