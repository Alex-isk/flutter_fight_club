import 'package:flutter/material.dart';
import 'package:flutter_fight_club/fight_result.dart';
import 'package:flutter_fight_club/resource/fight_club_colors.dart';
import 'package:flutter_fight_club/resource/fight_club_images.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FightResultWidget extends StatelessWidget {
  final FightResult fightResult;


  const FightResultWidget({Key? key,
    required this.fightResult,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Stack(
        // alignment: AlignmentDirectional.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ColoredBox(color: FightClubColors.white),
              ),
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [FightClubColors.white, FightClubColors.purple],
                      )),
                ),
              ),
              Expanded(
                child: ColoredBox(color: FightClubColors.purple),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 8 ,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You',
                    style: TextStyle(
                        color: FightClubColors.darkGreyText,
                    fontSize: 14
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    FightClubImages.youAvatar,
                    height: 92,
                    width: 92,
                  ),
                ],
              ),
              Container(
                height: 44,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    //shape: BoxShape.rectangle, - прямоугольник и так по умолчанию - не указываем
                    color: fightResult.color,
                    borderRadius: BorderRadius.circular(22),
                  ),

                child: Center(
                  child: Text(
                  fightResult.result.toLowerCase(),
                    style: TextStyle(color: FightClubColors.whiteText, fontSize: 16),
                ),
                ),
              ),


                //       },
                //     ),
                //   ),
                //   ),
                // ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enemy',
                    style: TextStyle(color: FightClubColors.darkGreyText,
                        fontSize: 14
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    FightClubImages.enemyAvatar,
                    height: 92,
                    width: 92,
                  ),
                ],
              ),
              const SizedBox(width: 8 ,),
            ],
          ),
        ],
      ),
    );
  }
}
