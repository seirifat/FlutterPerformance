import 'dart:math';

import 'package:flutter/material.dart';

class AnimationProblemPage extends StatefulWidget {
  const AnimationProblemPage({Key? key}) : super(key: key);

  @override
  _AnimationProblemPageState createState() => _AnimationProblemPageState();
}

class _AnimationProblemPageState extends State<AnimationProblemPage> 
with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int counter = 0;

  void _onPressed() {
    setState(() {
      counter++;
    });
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        splashColor: Colors.red,
        child: const Icon(Icons.slow_motion_video),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) => Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(360 * _controller.value * (pi / 180.0)),
          child: CounterWidget(
            counter: counter,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key, required this.counter}) : super(key: key);
  final int counter;
  @override
  Widget build(BuildContext context) {
    print('building `CounterWidget`');
    return Center(
      child: Text(
        counter.toString(),
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
