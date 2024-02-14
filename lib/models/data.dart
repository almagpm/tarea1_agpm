import 'package:flutter/material.dart';
import 'package:video1_agpm/models/cha.dart';

final listCategory = ['Naruto', 'Sasuke', 'Sakura'];

final listCha = [
  Cha(
    'Naruto Uzumaki',
    'Clan Uzumaki',
    '10 de octubre',
    4,
    [
      ImageCha(
        'images/naruto.png',
        const Color(0xffEAA906),
      ),
      ImageCha(
        'images/naruto_2.png',
        const Color(0xff08B894),
      ),
      ImageCha(
        'images/naruto_3.png',
        const Color(0xffB50D0D),
      ),
    ],
  ),
  Cha(
    'Sasuke Uchiha',
    'Clan Uchiha',
    '23 de julio',
    4,
    [
      ImageCha(
        'images/sasuke.png',
        Color.fromARGB(255, 40, 6, 234),
      ),
      ImageCha(
        'images/sasuke.png',
        const Color(0xff08B894),
      ),
      ImageCha(
        'images/sasuke.png',
        const Color(0xffB50D0D),
      ),
    ],
  ),
  Cha(
    'Sakura Haruno',
    'Clan Uchiha',
    '28 de marzo',
    4,
    [
      ImageCha(
        'images/sakura.png',
        Color.fromARGB(255, 235, 41, 151),
      ),
      ImageCha(
        'images/naruto_2.png',
        const Color(0xff08B894),
      ),
      ImageCha(
        'images/naruto_3.png',
        const Color(0xffB50D0D),
      ),
    ],
  ),
  
  
  
 
];