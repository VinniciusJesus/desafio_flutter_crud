import 'package:flutter/material.dart';

class MainInput extends StatelessWidget {
  final TextEditingController txtController;
  final String label;
  final TextInputType txtInputType;
  final Function(String)? onChanged;
  final Color color;
  final String prefix;
  final bool haveDarkMode;

  MainInput(
    this.label, {
    Key? key,
    required this.txtController,
    required this.txtInputType,
    this.haveDarkMode = true,
    this.prefix = "",
    this.color = const Color(0xFF272B2E),
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: TextFormField(
        keyboardType: txtInputType,
        controller: txtController,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                width: 2,
                color: Colors.grey,
              ),
            ),
            labelText: label,
            labelStyle: TextStyle(color: Colors.grey)),
        onChanged: onChanged,
      ),
    );
  }
}
