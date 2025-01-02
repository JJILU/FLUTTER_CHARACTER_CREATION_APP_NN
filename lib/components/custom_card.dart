import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(this.text,this.color,{super.key});

  final String text;
  final Color color;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.only(bottom: 40),
      child: Text(text),
    );
  }
}
