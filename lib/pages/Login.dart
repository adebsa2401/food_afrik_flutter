import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<Map<String, Object>> fields = [
    {
      'name': 'Email',
      'type': TextInputType.emailAddress,
      'value': null,
    },
    {
      'name': 'Password',
      'type': TextInputType.visiblePassword,
      'value': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Connexion'),
          Text('Entrez vos informations de connexion'),
          ...fields
              .map((field) => TextField(
                    keyboardType: field['type'],
                  ))
              .toList(),
          TextButton(
            child: Text('Connectez-vous'),
            onPressed: login,
          ),
          GestureDetector(
            child: Text('Avez-vous oublié votre mot de passe?'),
            onTap: forgotPassword,
          ),
          Text('Connectez-vous avec'),
          TextButton(
            child: Row(
              children: [
                Icon(Icons.ac_unit /* facebbok logo */),
                Text('Connexion avec Facebook')
              ],
            ),
            onPressed: () => loginWithService(),
          ),
          TextButton(
            child: Row(
              children: [
                Icon(Icons.ac_unit /* instagram logo */),
                Text('Connexion avec Instagram')
              ],
            ),
            onPressed: () => loginWithService(),
          ),
        ],
      ),
    );
  }

  void login() {
    // implement login with email address and password logic
  }

  void loginWithService() {
    // implement login to facebook and instagram logic
  }

  void forgotPassword() {
    // implement required logic when the password is forgotten
  }
}
