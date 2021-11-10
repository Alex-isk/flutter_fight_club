import 'package:flutter/material.dart';
import 'package:flutter_fight_club/pages/fight_page.dart';
import 'package:flutter_fight_club/pages/main_page.dart';
import 'package:flutter_fight_club/resource/fight_club_colors.dart';
import 'package:flutter_fight_club/widgets/secondary_action_button.dart';

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
               child: Text(
                 'Statistics',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 24,
                     color: FightClubColors.darkGreyText,
                     fontWeight: FontWeight.w400,
                 ),
               ),
             ),

             Expanded(child: SizedBox()),
             // FutureBuilder<String?>(
             //   future: SharedPreferences.getInstance().then(
             //         (sharedPreferences) =>
             //         sharedPreferences.getString('last_fight_result'),
             //   ),
             //   builder: (context, snapshot) {
             //     if (!snapshot.hasData || snapshot.data == null) {
             //       return const SizedBox();
             //     }
             //     return Center(child: Text(snapshot.data!));
             //   },
             // ),

             // Expanded(child: SizedBox(height: 8,)),
             //
             // SecondaryActionButton(
             //   text: 'Statistics'.toUpperCase(),
             //   onTap: () {
             //     Navigator.of(context).push(
             //       MaterialPageRoute(
             //         builder: (context) => StatisticsPage(),
             //       ),
             //     );
             //   },
             // ),





             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16),
               child: SecondaryActionButton(
                   text: 'Back',
                   onTap: () {
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context) => MainPage(),
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