import 'package:flutter/material.dart';
import 'package:reclamei_mobile/components/sections/account_actions.dart';
import 'package:reclamei_mobile/components/sections/header.dart';
import 'package:reclamei_mobile/components/sections/complaints_carousel.dart';
import 'package:reclamei_mobile/components/sections/scoreboard.dart';

import '../components/app_bar_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: Column(
        children: <Widget>[
          Header(),
          ComplaintsCarousel(),
          Scoreboard(totalProblems: 100, totalProblemsSolved: 21,),
        ],
      ),
    );
  }
}
