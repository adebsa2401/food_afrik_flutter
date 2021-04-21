import 'package:flutter/material.dart';

class TextFormFieldDecoration extends InputDecoration {
  TextFormFieldDecoration(
      {String labelText, String hintText, bool requiredField = true})
      : super(
          labelText: labelText + (requiredField ? ' *' : ''),
          hintText: hintText ??
              (labelText == null ? '' : 'Enter your $labelText please'),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(4),
          ),
          fillColor: Colors.grey,
        );
}
