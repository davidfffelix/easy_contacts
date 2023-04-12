import 'package:flutter/material.dart';

class ContactListHomePage extends StatelessWidget {
  const ContactListHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Contatos'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                child: const Icon(
                  Icons.add,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    'contact-form',
                  );
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
