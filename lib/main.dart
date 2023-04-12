import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'my_app.dart';

void main() async {
  runApp(
    const MyApp(),
  );

  // // Instância do Firebase
  // await Firebase.initializeApp();

  // // Instância do Firestore
  // FirebaseFirestore.instance.collection('contact').doc().set({
  //   'name': 'Joaquim',
  //   'phone': '(11) 9 9852-9632',
  //   'e-mail': 'joaquim@email.com'
  // });
}
