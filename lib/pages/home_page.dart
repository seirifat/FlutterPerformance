import 'package:flutter/material.dart';
import 'package:flutter_performance/pages/animation_problem_fixed_page.dart';
import 'package:flutter_performance/pages/widget_problem_fixed_page.dart';

import 'animation_problem_page.dart';
import 'welcome_page.dart';
import 'widget_problem_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const WelcomePage(),
          const WidgetProblemPage(),
          const WidgetProblemFixedPage(),
          const AnimationProblemPage(),
          const AnimationProblemFixedPage(),
        ],
      ),
    );
  }
}