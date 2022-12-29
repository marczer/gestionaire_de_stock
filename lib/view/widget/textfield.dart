import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  // const textfield({super.key});

  final String label;
  final String? hinttext;
  final double? width;
  final TextEditingController;
  final bool textvisible;
  final IconData? icon;
  final Color? color;

  textfield(
      {required this.label,
      this.textvisible = false,
      required this.TextEditingController,
      this.icon,
      this.width,
      this.color,
      this.hinttext});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    var largeur = MediaQuery.of(context).size.width;
    var hauteur = MediaQuery.of(context).size.height;
    return Container(
      height: 50,
      color: color,
      width: width,
      child: TextFormField(
        obscureText: textvisible,
        controller: TextEditingController,
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: Colors.black45)),
          prefixIcon: Icon(
            icon,
            size: 25,
            color: Colors.white,
          ),
          labelText: label,
          hintText: hinttext,
          labelStyle: TextStyle(color: Colors.white, fontSize: 17),
          hintStyle:
              TextStyle(letterSpacing: 1, color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
