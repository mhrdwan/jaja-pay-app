// components/menu_component.dart
import 'package:flutter/material.dart';
import 'package:jajapay/constans/color.dart';

class MenuComponent extends StatefulWidget {
  final String? icon;
  final String? title;

  const MenuComponent({
    super.key,
    this.icon,
    this.title,
  });

  @override
  State<MenuComponent> createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            widget.icon ?? "",
            width: 24,
            height: 24,
            color: JajaColors.JajaBlue.B300,
          ),
        ),
        SizedBox(height: 8),
        Text(
          widget.title ?? "",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
