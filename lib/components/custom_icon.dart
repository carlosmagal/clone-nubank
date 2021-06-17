import 'package:flutter/material.dart';
import 'package:flutter_plus/flutter_plus.dart';

import '../utils/colors.dart';

class CustomAppBarIcon extends StatelessWidget {

  CustomAppBarIcon({required this.icon, this.margin = 0});
  final IconData icon;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return ContainerPlus(
      isCircle: true,
      width: 60,
      height: 60,
      margin: EdgeInsets.only(right: this.margin),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      color: ColorsNu.lightPurple.withOpacity(.4),
      child: Icon(
        this.icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}