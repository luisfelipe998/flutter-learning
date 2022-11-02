import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text(
                'about',
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () => Navigator.pushNamed(context, '/about'),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text(
                'topics',
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () => Navigator.pushNamed(context, '/topics'),
            ),
          ),
        ],
      ),
    );
  }
}
