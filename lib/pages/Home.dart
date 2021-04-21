import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  final String title = 'RECETTES DE CUISINE';

  final List<String> descriptions = const [
    'Découvrez les recettes Africaines',
    'Proposez vos propres recettes à vos abonnés',
    'Interagissez avec les chefs qui vous inspirent'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: window.physicalSize.width,
        child: Column(
          children: [
            Image(
              image: AssetImage('build/assets/images/back_001.jpg'),
              fit: BoxFit.fill,
            ),
            Text(title),
            Column(
              children: descriptions.map((desc) => Text(desc)).toList(),
            ),
            ElevatedButton(
              child: Text('Connectez-Vous'),
              onPressed: () => Navigator.pushNamed(context, '/login'),
            ),
            ElevatedButton(
              child: Text('Créez Votre Compte'),
              onPressed: () => Navigator.pushNamed(context, '/register'),
            ),
          ],
        ),
      ),
    );
  }
}
