import 'package:flutter/material.dart';
import 'contact_form_page.dart';
import 'contact_list_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      routes: {
        '/': (context) {
          return ContactListHomePage();
        },
        'contact-form': (context) {
          return ContactFormPage();
        },
      },
    );
  }
}
