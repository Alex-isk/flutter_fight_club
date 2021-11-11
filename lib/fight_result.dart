import 'package:flutter/painting.dart';
import 'package:flutter_fight_club/resource/fight_club_colors.dart';

class FightResult {
  final String result;
  final Color color;
  const FightResult._(this.result, this.color);

  static const won = FightResult._('Won', FightClubColors.green);
  static const lost = FightResult._('Lost', FightClubColors.red);
  static const draw = FightResult._('Draw', FightClubColors.blueButton);

  /* необходимо произвети преобразование из текста в конкретно объект FightResult
  1. добавляем доп список  static const values со значениями [won, lost, draw] который может принимать FightResult
  2. создаем статический метод static FightResult получает/может обращаться через FightResult getByName
   ----> и передает имя final String name и в списке найти первый попавшийся эллемент, который
   передается через const FightResult._(this.result) --> 'Won''Lost''Draw' равен имени по
   которому мы ищем (возвращает занчение)
   */
  static const values = [won, lost, draw];

  static FightResult getByName(final String name) {
    return values.firstWhere((fightResult) => fightResult.result == name);
  }


  static FightResult? calculateResult(
      final int yourLives, final int enemysLives) {
    if (yourLives == 0 && enemysLives == 0) {
      return draw;
    } else if (yourLives == 0) {
      return lost;
    } else if (enemysLives == 0) {
      return won;
    }
    return null;
  }

  @override
  String toString() {
    return 'FightResult{result: $result}';
  }
}

