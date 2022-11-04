import 'package:flutter/material.dart';
import 'package:quizapp/shared/shared.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('about'), backgroundColor: Colors.blue),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Text(
            'This app was built coding along with the fireship.io flutter course: https://fireship.io/courses/flutter-firebase/'),
      ),
      bottomNavigationBar: const BottomNavBar(
        index: 1,
      ),
    );
  }
}
