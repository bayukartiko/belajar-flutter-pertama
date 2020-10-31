import 'package:flutter/material.dart';
import 'screens/register.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Registrasi Bayu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Registrasi Bayu Kartiko'),
        ),
        body: RegisterScreen(),
      ),
    );
  }
}
