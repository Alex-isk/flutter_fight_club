import 'package:flutter/material.dart';
import 'package:flutter_fight_club/pages/fight_page.dart';
import 'package:flutter_fight_club/pages/main_page.dart';
import 'package:flutter_fight_club/resource/fight_club_colors.dart';
import 'package:flutter_fight_club/widgets/secondary_action_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _StatisticsPage();
  }
}
 class _StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: FightClubColors.background,
     body: SafeArea(
         child: Column(
           children: [

             Container(
               margin: EdgeInsets.fromLTRB(16, 24, 16, 24),
               // or // margin: EdgeInsets.only(left: 16, right: 16, top: 24),
               child: Text(
                 'Statistics',
                 textAlign: TextAlign.center,
                 // or // alignment: Aligment.center,
                 style: TextStyle(
                     fontSize: 24,
                     color: FightClubColors.darkGreyText,
                     fontWeight: FontWeight.w400,
                 ),
               ),
             ),

             Expanded(child: const SizedBox.shrink()),// or // Expanded(child: SizedBox()),

             FutureBuilder<SharedPreferences>(
               future: SharedPreferences.getInstance(),
               builder: (context, snapshot) {
                 if (!snapshot.hasData || snapshot.data == null) {
                   return const SizedBox();
                 }
                 final SharedPreferences sp = snapshot.data!;
                 // final FightResult fightResult = FightResult.getByName(snapshot.data!); // см. аннотацию fight_result.dart
                 return Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Text(
                       "Won : ${sp.getInt("stats_won") ?? 0}",
                       style: TextStyle(
                           fontSize: 16,
                           color: FightClubColors.darkGreyText),
                     ),
                  const SizedBox(height: 6),

                     Text(
                       "Lost: ${sp.getInt("stats_lost") ?? 0}",
                       style: TextStyle(
                           fontSize: 16,
                           color: FightClubColors.darkGreyText),
                     ),
                     const SizedBox(height: 6),

                     Text(
                       "Draw: ${sp.getInt("stats_draw") ?? 0}",
                       style: TextStyle(
                           fontSize: 16,
                           color: FightClubColors.darkGreyText),
                     ),

                   ]
                 );
               },
             ),

             Expanded(child: const SizedBox.shrink()),





             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16),
               // or // padding: const EdgeInsets.only(bottom: 16),
               child: SecondaryActionButton(
                   text: 'Back',
                 /* or
                         onTap: () {
                         Navigator.of(context).pop();
                 */
                 onTap: () {
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context) => MainPage(),
                         /* or
                         onTap: () {
                         Navigator.of(context).pop();
                         */
                       ),
                     );
                   },),
             ),



           ],

   ),
   ),
   );
  }
 }