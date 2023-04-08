import 'package:flutter/material.dart';

// Register Detials.
List<Map<String, dynamic>> getRegisterDetails() {
  final List<Map<String, dynamic>> _registerDetails = [
    {
      "allData": [
        {"icon": Icon(Icons.person, color: Colors.white), "text": "First name"},
        {
          "icon": Icon(Icons.person_2_outlined, color: Colors.white),
          "text": "Last name"
        },
        {"icon": Icon(Icons.email, color: Colors.white), "text": "Email"},
        {"icon": Icon(Icons.key, color: Colors.white), "text": "Password"},
      ]
    }
  ];
  return _registerDetails;
}

// for login information
List<Map<String, dynamic>> getLoginDetails() {
  final List<Map<String, dynamic>> _loginDetails = [
    {
      "allData": [
        {"icon": Icon(Icons.email, color: Colors.white), "text": "Email"},
        {"icon": Icon(Icons.key, color: Colors.white), "text": "Password"},
      ]
    }
  ];
  return _loginDetails;
}
