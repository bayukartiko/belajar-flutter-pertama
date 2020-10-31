import 'package:flutter/material.dart';
import '../mixins/validation.dart';

class RegisterScreen extends StatefulWidget {
  createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with validation { // nama class di file validation.dart
  final formKey = GlobalKey<FormState>(); // global key untuk validasi

  // variabel untuk value masing-masing inputan
  String name = '';
  String email = '';
  String notlp = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey, // global key yang diatas tadi
        child: Column(
          children: [ // untuk objek input dari widget
            nameField(),
            emailField(),
            notlpField(),
            passwordField(),
            registerButton(),
          ],
        ),
      ),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nama Lengkap',
        hintText: 'Masukan nama lengkap anda',
        icon: Icon(Icons.people),
      ),
      validator: validateName, // nama fungsi pada file validation.dart
      onSaved: (String value) { // jika lolos validasi
        name = value; // variabel yang kosong diatas aka diisi oleh value yang diinputkan
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com',
        icon: Icon(Icons.email),
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget notlpField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'No telepon',
        hintText: 'Masukkan nomor telepon anda',
        icon: Icon(Icons.phone),
      ),
      validator: validateNotlp,
      onSaved: (String value) {
        notlp = value;
      },
    );
  }
  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
        icon: Icon(Icons.lock),
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget registerButton() {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {
        
        // formKey ADALAH GLOBAL KEY, KEMUDIAN DIIKUTI DENGAN currentState
        // LALU METHOD validate(), NILAINYA ADALAH FALSE / TRUE

        if (formKey.currentState.validate()) { // jika benar
          formKey.currentState.save(); // fungsi save dijalankan

          // print ke console
          print('Nama Lengkap: $name');
          print('Email: $email');
          print('Nomor telepon: $notlp');
          print('Password: $password');
        }
      },
      child: Text('Daftar'),
    );
  }
}
