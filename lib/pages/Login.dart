import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text('Connexion'),
            Text('Entrez vos informations de connexion'),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  ...fields
                      .map((field) => TextFormField(
                            keyboardType: field['type'],
                          ))
                      .toList(),
                  ElevatedButton(
                    child: Text('Connectez-vous'),
                    onPressed: login,
                  ),
                ],
              ),
            ),
            TextButton(
              child: Text('Avez-vous oublié votre mot de passe?'),
              onPressed: forgotPassword,
            ),
            Text('Connectez-vous avec'),
            ElevatedButton(
              child: Row(
                children: [
                  Icon(Icons.ac_unit /* facebbok logo */),
                  Text('Connexion avec Facebook')
                ],
              ),
              onPressed: () => loginWithService(),
            ),
            ElevatedButton(
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
