import 'package:flutter/material.dart';
import 'package:portfolio/widget/skillsbar.dart';

class SkillsPart extends StatelessWidget {
  const SkillsPart({super.key});

  @override
  Widget build(BuildContext context) {
      final Map<String, double> skills = {
    "Flutter": 0.75,
    "Firebase": 0.7,
    "React & ReactNative": 0.5,
    "Javascript": 0.65,
    "MySQL": 0.5,
    "HTML & CSS": 0.65,
    "OOP & Data Structures": 0.7,
    "Git & GitHub": 0.5,
  };
    return Container(
      child: Column(
       children:[
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.work_history,color: Colors.white,size: 40,),
           SizedBox(width: 20,),
           Text('Skills',style: TextStyle(fontSize: 30,color: Colors.white),),
         ],),
                  SizedBox(height: 10,),
         Column(children:skills.keys.map((key) => SkillBar(skill: key, level: skills[key]!)).toList(),
         )
       ]
       

      ),
    );
  }
}