import 'package:flutter/material.dart';

class ImageCha {
  ImageCha(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Cha {
  Cha(
    this.name,
    this.clan,
    this.nacimiento,
    this.info,
    this.combate,
    this.evasion,
    this.listImage,
    this.professors,
  );
  final String name;
  final String clan;
  final String info;
  final String nacimiento;
  final int combate;
  final int evasion;
  final List<ImageCha> listImage;
  final List<String> professors;
}