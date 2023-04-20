import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const CalButton({Key? key, required this.title, this.color =  Colors.red, required this.onPress }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onPress ,
        child: Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
             color: color,
            borderRadius: BorderRadius.circular(42),
          ),
          child: Center(child: Text(title,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white),)),
        ),
    ),
      );
  }
}
