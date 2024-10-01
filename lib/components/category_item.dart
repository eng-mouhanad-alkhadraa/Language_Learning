import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap}); 
  String? text; 
  Color? color; 
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                text!, 
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000429),
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
