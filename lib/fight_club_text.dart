// import 'package:flutter/material.dart';
//
//
// class TextResultMove {
//   final String text;
//
//   const TextResultMove._(this.text);
//
//   static const draw = TextResultMove._('Draw');
//   static const won = TextResultMove._('You won');
//   static const lost = TextResultMove._('You lost');
//   static const yourAttack = TextResultMove._('Your attack was blocked.');
//   static const youHit = TextResultMove._('You hit enemy’s'); // ”You hit enemy’s {часть тела в нижнем регистре}.”
//   static const enemysAttack = TextResultMove._('Enemy’s attack was blocked.');
//   static const enemysHit = TextResultMove._('Enemy hit your'); // ”Enemy hit your {часть тела в нижнем регистре}.”
//
//
// }


// Если у вас и у врага одновременно закончились жизни, выводить: ”Draw”
// Если у вас остались жизни, а у врага закончились — “You won”
// Если у вас закончились жизни, а у врага остались — “You lost”
// Если жизни не закончились, то выводить 2 строки:
// Первая строка.
// Если вы атаковали, а ваша атака была отбита: ”Your attack was blocked.”
// Если вы атаковали успешно: ”You hit enemy’s {часть тела в нижнем регистре}.”
// Вторая строка
// Если враг атаковал, но вы отбили атаку: ”Enemy’s attack was blocked.”
// Если враг атаковал успешно: ”Enemy hit your {часть тела в нижнем регистре}.”
// Перенос строки сделать с помощью символа \n
// Не пропустите точки, там где они нужны!