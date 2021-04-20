import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<Map<String, Object>> fields = [
    {
      'name': 'Name',
      'type': TextInputType.name,
      'value': null,
    },
    {
      'name': 'Email',
      'type': TextInputType.emailAddress,
      'value': null,
    },
    {
      'name': 'Phone Number',
      'type': TextInputType.phone,
      'value': null,
    },
    {
      'name': 'Location',
      'type': TextInputType.streetAddress,
      'value': null,
    },
    {
      'name': 'Password',
      'type': TextInputType.visiblePassword,
      'value': null,
    },
    {
      'name': 'Confirm Password',
      'type': TextInputType.visiblePassword,
      'value': null,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Inscription'),
        Text('Ajoutez les informations d\'inscription'),
        ...fields
            .map((field) => TextField(
                  keyboardType: field['type'],
                ))
            .toList(),
        TextButton(
          onPressed: register,
          child: Text('Inscription'),
        ),
      ]),
    );
  }

  void register() {
    // implement register logic
  }
}
