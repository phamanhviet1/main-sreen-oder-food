import 'package:flutter/material.dart';

import 'commons.dart';
class Title extends StatelessWidget {
  final String text;
  final double size;
  final Color colors;
  final FontWeight weight;

  const Title({Key key, this.text, this.size, this.colors, this.weight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size ?? 16,fontWeight: weight ?? FontWeight.normal, color: colors?? black),);
  }
}