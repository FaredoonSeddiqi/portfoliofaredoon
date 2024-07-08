import 'package:flutter/material.dart';
import 'package:portfolio/widget/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPart extends StatefulWidget {
  const ContactPart({super.key});

  @override
  State<ContactPart> createState() => _ContactPartState();
}

class _ContactPartState extends State<ContactPart> {
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContactIcon(
              iconData: Icons.link,
              url: '/FaredoonSeddiqi',
              fun: () => launchUrl(
                  'https://olympus.mygreatlearning.com/courses/38652/certificate'
                      as Uri),
            ),
            ContactIcon(
              iconData: Icons.phone,
              url: 'tel:+92-3330552579',
            ),
            ContactIcon(
              iconData: Icons.email,
              url: 'jonseddiqi@gmail.com',
            ),
             ContactIcon(
              iconData: Icons.link,
              url: 'Github/FaredoonSeddiqi',
              fun: () => launchUrl(Uri.parse(
                  'https://github.com/FaredoonSeddiqi/FaredoonSeddiqi/blob/main/README.md')),
         
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContactIcon(
              iconData: Icons.link,
              url: 'Linkedin/FaredoonSeddiqi',
              fun: () => launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/faredoon-seddiqi-8bb15a256?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app')),
            ),
            ContactIcon(
              iconData: Icons.phone,
              url: 'tel:+93789027150',
            ),
            ContactIcon(
              iconData: Icons.email,
              url: 'jonseddiqi@gmail.com',
            ),
             ContactIcon(
              iconData: Icons.link,
              url: 'Github/FaredoonSeddiqi',
              fun: () => launchUrl(Uri.parse(
                  'https://github.com/FaredoonSeddiqi/FaredoonSeddiqi/blob/main/README.md')),
         
            ),
          ],
        ),
      ),
    );
  }
}

class ContactIcon extends StatelessWidget {
  const ContactIcon(
      {Key? key,
      required this.iconData,
      required this.url,
      this.fun = _defaultFunction})
      : super(key: key);
  final IconData iconData;
  final String url;
  final VoidCallback fun;
  static void _defaultFunction() {}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: fun,
            child: Text(
              url,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
