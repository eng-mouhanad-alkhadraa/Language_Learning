import 'package:flutter/material.dart';

class Item {
  final String sound;

  final String? image;
  final String ArName;
  final String enName;

  const Item(
      {required this.sound,
      @required this.image,
      required this.ArName,
      required this.enName,});
}
