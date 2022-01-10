import 'package:flutter/material.dart';

class MainIconButton extends StatelessWidget {
  const MainIconButton(
    this.icon, {
    Key? key,
    required this.onTap,
    required this.bgColor,
    required this.iconColor,
    required this.borderColor,
    this.hasBorder = true,
    this.sizeIcon = 25,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color bgColor;
  final Color? borderColor;
  final bool hasBorder;
  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ElevatedButton(
        child: Icon(
          icon,
          color: iconColor,
          size: sizeIcon,
        ),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: bgColor,
          side: hasBorder == false
              ? const BorderSide(width: 0, color: Colors.transparent)
              : BorderSide(width: 3, color: borderColor!),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
