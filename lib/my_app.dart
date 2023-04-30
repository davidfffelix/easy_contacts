import 'package:flutter/material.dart';
import 'contact_form/contact_form_page.dart';
import 'home/contact_list_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static String home = '/';
  static String contactForm = 'contact-form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      routes: {
        home: (context) {
          return const ContactListHomePage();
        },
        contactForm: (context) {
          return const ContactFormPage();
        },
      },
    );
  }
}