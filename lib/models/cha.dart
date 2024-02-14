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
    this.punctuation,
    this.listImage,
  );
  final String name;
  final String clan;
  final String nacimiento;
  final int punctuation;
  final List<ImageCha> listImage;
}