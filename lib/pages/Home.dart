import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title = 'RECETTES DE CUISINE';

  final List<String> descriptions = [
    'Découvrez les recettes Africaines',
    'Proposez vos propres recettes à vos abonnés',
    'Interagissez avec les chefs qui vous inspirent'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:
                  Image(image: AssetImage('build/assets/images/back_001.jpg'))),
          Text(title),
          Column(
            children: descriptions.map((desc) => Text(desc)).toList(),
          ),
          TextButton(
            child: Text('Connectez-Vous'),
            onPressed: () => Navigator.pushNamed(context, '/login'),
          ),
          TextButton(
            child: Text('Créez Votre Compte'),
            onPressed: () => Navigator.pushNamed(context, '/register'),
          ),
        ],
      ),
    );
  }
}
