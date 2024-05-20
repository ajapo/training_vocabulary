import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('メニュー')),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              child: Text('単語登録'),
              onPressed: () {
                Navigator.pushNamed(context, '/touroku');
              },
            ),
            TextButton(
              child: Text('試験'),
              onPressed: () {
                Navigator.pushNamed(context, '/shiken');
              },
            ),
          ],
        ),
      ),
    );
  }
}
