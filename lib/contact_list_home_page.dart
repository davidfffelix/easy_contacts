import 'package:flutter/material.dart';

import 'my_app.dart';

class ContactListHomePage extends StatelessWidget {
  const ContactListHomePage({super.key});

  static const list = [
    {
      'name': '',
      'telephone': '',
      'avatar': '',
    },
    {
      'name': '',
      'telephone': '',
      'avatar': '',
    },
    {
      'name': '',
      'telephone': '',
      'avatar': '',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Contatos'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).pushNamed(MyApp.contactForm);
                  // Navigator.pushNamed(context, 'contact-form');
                },
              ),
            ),
          ],
        ),
        body: ListView(),
      ),
    );
  }
}
