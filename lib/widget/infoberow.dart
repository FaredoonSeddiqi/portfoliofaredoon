import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final String number;
  final String title;

  const InfoRow({
    Key? key,
    required this.number,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 2),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
