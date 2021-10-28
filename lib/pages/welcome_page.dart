import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flash.jpeg'),
            const SizedBox(height: 8),
            Text(
              'https://p4.wallpaperbetter.com/wallpaper/772/1021/165/movie-zootopia-flash-zootopia-wallpaper-preview.jpg',
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(height: 24),
            Text(
              'Welcome to Flutter Performance',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 24),
            Text(
              'reference: Flutter Europe: Optimizing your Flutter App, 2020.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
