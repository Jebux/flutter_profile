
import 'package:flutter/material.dart';
import 'package:flutter_profile/pages/profile_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Home',
          style: TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Profile()),
            );
          },
          child: const Text('Siguiente'),
        ),
      ],
    );
  }
}