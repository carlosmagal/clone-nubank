import 'package:flutter/material.dart';
import 'package:flutter_plus/flutter_plus.dart';
import 'package:nuclone/utils/colors.dart';

class BottomCard extends StatelessWidget {
  BottomCard({ required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ContainerPlus(
      height: 100,
      width: 120,
      radius: RadiusPlus.all(8),
      color: ColorsNu.lightPurple,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            this.icon,
            color: Colors.white,
            size: 27,
          ),
          TextPlus(
            this.title,
            fontSize: 15,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}