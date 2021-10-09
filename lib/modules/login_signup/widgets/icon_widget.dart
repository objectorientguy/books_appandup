import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
 final IconData icon;
 final Color iconColor;
 IconWidget({required this.icon,required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
    );
  }
}