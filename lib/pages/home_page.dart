import 'package:flutter/material.dart';
import 'package:flutter_performance/pages/widget_problem_fixed_page.dart';

import 'welcome_page.dart';
import 'widget_problem_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          const WelcomePage(),
          const WidgetProblemPage(),
          const WidgetProblemFixedPage(),
        ],
      ),
    );
  }
}