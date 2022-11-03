import 'package:catanddog/ui/screens/home_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      durationInSeconds: 2,
      navigator: const HomeScreen(),
      title: const Text(
        'Cat and Dog',
        style: TextStyle(
            fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      logo: Image.network(
          'https://media.istockphoto.com/vectors/corgi-and-cat-cute-pets-vector-id1327653663?b=1&k=20&m=1327653663&s=612x612&w=0&h=2nWUsmrxbCv4AmhJcMzGjrDg7FK63GT6yO39lRhzG4E='),
    );

  }
}
