import 'package:flutter/material.dart';
import 'package:food_afrik/widgets/TextFormFieldDecoration.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

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
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Text('Inscription'),
          Text('Ajoutez les informations d\'inscription'),
          Form(
              child: Column(children: [
            ...fields
                .map((field) => TextFormField(
                      keyboardType: field['type'],
                      decoration: TextFormFieldDecoration(
                        labelText: field['name'],
                      ),
                    ))
                .toList(),
            ElevatedButton(
              onPressed: register,
              child: Text('Inscription'),
            ),
          ]))
        ]),
      ),
    );
  }

  void register() {
    // implement register logic
  }
}
