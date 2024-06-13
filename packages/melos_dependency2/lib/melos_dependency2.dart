library melos_dependency2;
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget { 
  CustomContainer( 
      {required this.child, required this.height, required this.width, required this.color}); 
  final Widget child; 
  final double height; 
  final double width; 
  final Color color; 
  
  @override 
  Widget build(BuildContext context) { 
    return Container( 
        height: height, 
        width: width, 
        padding: EdgeInsets.all(12), 
        decoration: BoxDecoration( 
            color: color, borderRadius: BorderRadius.all(Radius.circular(8))), 
        child: child, 
    ); 
  } 
}
