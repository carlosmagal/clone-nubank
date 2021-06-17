import 'package:flutter/material.dart';
import 'package:flutter_plus/flutter_plus.dart';
import 'package:nuclone/utils/colors.dart';

class ListCard extends StatelessWidget {

  ListCard({
    required this.icon, 
    required this.title, 
    required this.subtitle,
    this.value,
    this.valueColor,
    this.lastWidget,
    this.height = 165
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final String? value;
  final Widget? lastWidget;
  final Color? valueColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ContainerPlus(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      margin: const EdgeInsets.only(bottom: 12),
      color: Colors.white,
      radius: RadiusPlus.all(5),
      height: this.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                this.icon,
                color: ColorsNu.listCardTitle,
                size: 30,
              ),
              TextPlus(
                this.title,
                color: ColorsNu.listCardTitle,
                fontSize: 16,
                margin: const EdgeInsets.only(left: 8),
              )
            ],
          ),
          TextPlus(
            this.subtitle,
            isCenter: false,
            color: ColorsNu.listCardTitle,
            fontSize: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              this.value != null ? TextPlus(
                this.value,
                color: this.valueColor,
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ) : SizedBox(),
              this.lastWidget??ContainerPlus(),
            ],
          ),
        ],
      ),
    );
  }
}