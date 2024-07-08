import 'package:flutter/material.dart';

class CertificatinCard extends StatelessWidget {
  const CertificatinCard(
      {super.key,
      required this.head,
      required this.subhead,
      required this.date,
       this.fun = _defaultFunction,      
      });
  final String head;
  final String subhead;
  final String date;
  final VoidCallback fun;
  static void _defaultFunction() {}


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              head,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subhead,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              date,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed:fun,
              child: Text('View',style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),          
                 ),

            )
          ],
        ),
      ),
    );
  }
}
