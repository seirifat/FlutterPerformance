import 'package:flutter/material.dart';
import 'package:flutter_performance/src/lorem_ipsum.dart';

class WidgetProblemPage extends StatelessWidget {
  const WidgetProblemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var i = 0; i < 10000; i++) _buildWidgetMethod(i),
      ],
    );
  }

  Widget _buildWidgetMethod(int i) {
    // 9 widgets
    final lorem = loremIpsum[i % loremIpsum.length];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: SizedBox(
              width: 30,
              height: 30,
              child: Center(
                child: Text(
                  lorem.substring(0, 1),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(lorem, softWrap: false),
          )
        ],
      ),
    );
  }
}