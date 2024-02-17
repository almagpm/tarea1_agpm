import 'package:flutter/material.dart';
import 'package:video1_agpm/models/cha.dart';

final listCategory = ['Naruto', 'Sasuke', 'Sakura', 'Sai' ];

final listCha = [
  Cha(
    'Naruto Uzumaki',
    'Clan Uzumaki',
    '10 de octubre',
    'Es el protagonista de la serie. Es un ninja de la aldea oculta de Konoha y tiene como objetivo convertirse en el Hokage, el líder de su aldea. Es conocido por su espíritu indomable, su determinación y su habilidad para superar desafíos. Naruto posee una habilidad especial llamada "chakra de Kurama" que le otorga una gran fuerza y velocidad.',
    4,
    3,
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
    ['Kakashi Hatake', 'Jiraiya', 'Iruka Umino'],
  ),
  Cha(
    'Sasuke Uchiha',
    'Clan Uchiha',
    
    '23 de julio',
    'Es un personaje central y rival de Naruto. Es un ninja de Konoha y proviene del clan Uchiha. Busca venganza contra su hermano mayor, Itachi Uchiha, quien destruyó a su clan. Sasuke es un usuario talentoso del Sharingan, una técnica ocular poderosa que le permite copiar los movimientos de sus oponentes.',
    4,
    4,
    [
      ImageCha(
        'images/sasuke.png',
        Color.fromARGB(255, 40, 6, 234),
      ),
      ImageCha(
        'images/sasuke_2.png',
        Color.fromARGB(255, 173, 3, 82),
      ),
      ImageCha(
        'images/sasuke_3.png',
        Color.fromARGB(255, 8, 143, 184),
      ),
    ],
    ['Kakashi Hatake', 'Orochimaru', 'Itachi Uchiha'],
  ),
  Cha(
    'Sakura Haruno',
    'Clan Uchiha',
    
    '28 de marzo',
    'Compañera de equipo de Naruto y Sasuke. Sakura es una ninja médica y es conocida por su inteligencia y habilidades de sanación. A pesar de no poseer habilidades ninja excepcionales como sus compañeros, demuestra su valentía y determinación en numerosas ocasiones.',
    3,
    3,
    [
      ImageCha(
        'images/sakura.png',
        Color.fromARGB(255, 235, 41, 151),
      ),
      ImageCha(
        'images/sakura_2.png',
        Color.fromARGB(255, 247, 94, 86),
      ),
      ImageCha(
        'images/sakura_3.png',
        Color.fromARGB(255, 15, 157, 23),
      ),
    ],
     ['Kakashi Hatake', 'Tsunade', 'Shizune'],
  ),
  Cha(
    'Sai Yamanaka',
    'Clan Yamanaka',
    '25 de noviembre',
    'Es un personaje introducido más adelante en la serie. Sai es un ninja de la aldea oculta de la Hoja y se une al equipo de Naruto como reemplazo de Sasuke. Inicialmente, Sai carece de habilidades sociales y muestra una personalidad reservada. Sai es un experto en técnicas de tinta y puede dar vida a sus dibujos para usarlos en combate.',
    4,
    3,
    [
      ImageCha(
        'images/sai.png',
        Color.fromARGB(255, 15, 157, 23),
      ),
      ImageCha(
        'images/sai_2.png',
        Color.fromARGB(255, 44, 42, 65),
      ),
      
    ],
    ['Kakashi Hatake', 'Yamato', 'Shikamaru Nara'],
  ),
  
  
  
 
];